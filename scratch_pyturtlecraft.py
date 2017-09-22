#! /usr/bin/python

# Scratch Helper app
# ------------------
# template based on work of Chris Proctor, Project homepage: http://mrproctor.net/scratch
#   https://github.com/cproctor/scratch_hue
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
# addVariable to return values to scratch (blocks type: 'r')
jobs = set()
variables = {}

@app.route('/poll')
def poll():
    global myturtle, jobs, variables
    s = "\n".join(["_busy {}".format(job) for job in jobs])
    s = s + "\n".join(["{} {}".format(var, variables[var]) for var in variables.keys()])
    #b = s
    #if b.strip() != "":
    #    print(b)
    return s

@app.route('/reset_all')
def reset_all():
    global myturtle, jobs, variables
    jobs = set()
    variables = {}
    return "OK"

@app.route('/crossdomain.xml')
def cross_domain_check():
    return '<cross-domain-policy><allow-access-from domain="*" to-ports="'+EXTENSION_PORT+'"/></cross-domain-policy>'

# PYCRAFT FUNCTIONS:
"""
[" ", "point in direction %n", "pointto", 90],
[" ", "set pen to block type %m.blocktype", "penblock", "ice"],
"""

def log(s):
    print(s)
    pcmt.chat("turtle received: {}".format(s))

def addVariable(varName, varValue):
    global myturtle, jobs, variables
    variables[varName] = str(varValue)

@app.route('/reset_turtle')
def reset_turtle():
    global myturtle, jobs, variables
    myturtle = initTurtle()
    return "OK"

@app.route('/setwhere')
def setwhere():
    global myturtle, jobs, variables
    log("setwhere")
    pos = pcmt.where()
    addVariable("where", pos)
    return "OK"

@app.route('/penup/<int:jobId>')
def penup(jobId):
    global myturtle, jobs, variables
    jobs.add(jobId)
    log("penup")
    myturtle.penup()
    jobs.remove(jobId)
    return "OK"

@app.route('/pendown/<int:jobId>')
def pendown(jobId):
    global myturtle, jobs, variables
    jobs.add(jobId)
    log("pendown")
    myturtle.pendown()
    jobs.remove(jobId)
    return "OK"

@app.route('/up/<int:jobId>/<int:angle>')
def up(jobId,angle):
    global myturtle, jobs, variables
    jobs.add(jobId)
    log("up {}".format(angle))
    myturtle.up(angle)
    jobs.remove(jobId)
    return "OK"

@app.route('/down/<int:jobId>/<int:angle>')
def down(jobId, angle):
    global myturtle, jobs, variables
    jobs.add(jobId)
    log("down {}".format(angle))
    myturtle.down(angle)
    jobs.remove(jobId)
    return "OK"

@app.route('/forward/<int:jobId>/<int:steps>')
def forward(jobId, steps):
    global myturtle, jobs, variables
    jobs.add(jobId)
    log("forward {}".format(steps))
    myturtle.forward(steps)
    jobs.remove(jobId)
    return "OK"

@app.route('/left/<int:jobId>/<int:degrees>')
def left(jobId, degrees):
    global myturtle, jobs, variables
    jobs.add(jobId)
    log("left {}".format(degrees))
    myturtle.left(degrees)
    jobs.remove(jobId)
    return "OK"

@app.route('/right/<int:jobId>/<int:degrees>')
def right(jobId, degrees):
    global myturtle, jobs, variables
    jobs.add(jobId)
    log("right {}".format(degrees))
    myturtle.right(degrees)
    jobs.remove(jobId)
    return "OK"

@app.route('/goto/<int:jobId>/<int:x>/<int:y>/<int:z>')
def goto(jobId, x, y, z):
    global myturtle, jobs, variables
    jobs.add(jobId)
    log("goto x {} y {} z {}".format(x, y, z))
    myturtle.goto(x, y, z)
    jobs.remove(jobId)
    return "OK"

@app.route('/penblock/<int:jobId>/<string:block>')
def penblock(jobId,block):
    global myturtle, jobs, variables
    jobs.add(jobId)
    log("penblock {}={}".format(block,pcmt.getblock(block)))
    myturtle.penblock(pcmt.getblock(block))
    jobs.remove(jobId)
    return "OK"

@app.route('/cube/<int:jobId>/<string:block>/<int:side>/<int:x>/<int:y>/<int:z>')
def cube(jobId, block, side, x, y, z):
    global myturtle, jobs, variables
    jobs.add(jobId)
    print(block, side, x, y, z)
    pcmt.cube(pcmt.getblock(block), side, x, y, z)
    jobs.remove(jobId)
    return "OK"

def initTurtle():
    t = pcmt.Turtle(pcmt.glowstone)
    t.clear_turtle(0, 0, 0)
    t.setheading(0)
    t.setverticalheading(0)
    t.setposition(0, 0, 0)
    t.speed(10)
    pcmt.chat("turtle created")
    print("turtle created ", t)
    return t

print(" * The Scratch helper app is running. Have fun :)")
print(" * See mrproctor.net/scratch for help.")
print(" *** creating turtle ***")
print(" * Press Control + C to quit.")

myturtle = initTurtle()
EXTENSION_PORT = 3320

done = False
while not done:
    try:
        app.run('0.0.0.0', port=EXTENSION_PORT)
    except:
        print("trying again")
        time.sleep(1)
    else:
        print("scratch_pyturtlecraft done")
        done = True
