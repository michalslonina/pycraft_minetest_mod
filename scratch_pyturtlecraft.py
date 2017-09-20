#! /usr/bin/python

# Scratch Helper app
# ------------------
# template based on work of Chris Proctor, Project homepage: http://mrproctor.net/scratch
#
# main document
#   https://wiki.scratch.mit.edu/w/images/ExtensionsDoc.HTTP-9-11.pdf
# Scratch Extension Protocol Discussion
#   https://scratch.mit.edu/discuss/topic/18117/
#

from flask import Flask
import logging
import pycraft_minetest as pcmt
import time

app = Flask("Scratch_Pycraft")
app.logger.removeHandler(app.logger.handlers[0])

loggers = [app.logger, logging.getLogger('werkzeug')]
# No logging. Switch out handlers for logging.
# handler = logging.FileHandler('scratch_hue_extension.log')
handler = logging.NullHandler()
formatter = logging.Formatter('%(asctime)s - %(name)14s - %(levelname)s - %(message)s')
handler.setFormatter(formatter)
for logger in loggers:
    logger.addHandler(handler)
    logger.setLevel(logging.INFO)

# jobs keeps the waiting jobs id. blocks type:'w'
# TODO implement a system to return value to scratch (blocks type: 'r')
jobs = set()

@app.route('/poll')
def poll():
    return "\n".join(["_busy {}".format(job) for job in jobs])

@app.route('/reset_all')
def reset_all():
    myturtle = initTurtle()
    return "OK"

@app.route('/crossdomain.xml')
def cross_domain_check():
    return """
<cross-domain-policy>
    <allow-access-from domain="*" to-ports="3316"/>
</cross-domain-policy>
"""

# PYCRAFT FUNCTIONS:
"""
[" ", "point in direction %n", "pointto", 90],
[" ", "set pen to block type %m.blocktype", "penblock", "ice"],
"""

@app.route('/penup')
def penup():
    print("penup")
    myturtle.penup()
    return "OK"

@app.route('/pendown')
def pendown():
    print("pendown")
    myturtle.pendown()
    return "OK"

@app.route('/up/<int:angle>')
def up(angle):
    print("up {}".format(angle))
    myturtle.up(angle)
    return "OK"

@app.route('/down/<int:angle>')
def down(angle):
    print("down {}".format(angle))
    myturtle.down(angle)
    return "OK"

@app.route('/forward/<int:steps>')
def forward(steps):
    global myturtle
    print("forward {}".format(steps))
    myturtle.forward(steps)
    return "OK"

@app.route('/left/<int:degrees>')
def left(degrees):
    print("left {}".format(degrees))
    myturtle.left(degrees)
    return "OK"

@app.route('/right/<int:degrees>')
def right(degrees):
    print("right {}".format(degrees))
    myturtle.right(degrees)
    return "OK"

@app.route('/goto/<int:x>/<int:y>/<int:z>')
def goto(x, y, z):
    print("goto x {} y {} z {}".format(x,y,z))
    myturtle.goto(x,y,z)
    return "OK"

@app.route('/penblock/<string:block>')
def penblock(block):
    print("penblock {}={}".format(block,pcmt.getblock(block)))
    myturtle.penblock(pcmt.getblock(block))
    return "OK"

@app.route('/cube/<string:block>/<int:side>/<int:x>/<int:y>/<int:z>')
def cube(block, side, x, y, z):
    print(block, side, x, y, z)
    pcmt.cube(pcmt.getblock(block), side, x, y, z)
    return "OK"

def initTurtle():
    t = pcmt.turtle(pcmt.glowstone)
    t.clear_turtle(0, 0, 0)
    t.setheading(0)
    t.setverticalheading(0)
    t.setposition(0, 0, 0)
    pcmt.chat("turtle created")
    print("turtle created ", t)
    return t

print(" * The Scratch helper app is running. Have fun :)")
print(" * See mrproctor.net/scratch for help.")
print(" *** creating turtle ***")
print(" * Press Control + C to quit.")

myturtle = initTurtle()

done = False
while not done:
    try:
        app.run('0.0.0.0', port=3320)
    except:
        print("trying again")
        time.sleep(1)
    else:
        print("scratch_pyturtlecraft done")
        done = True
