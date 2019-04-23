def setup():
    global x, y, z
    size(600, 600, P3D)
    background(0)
    noFill()
    stroke(255)
    smooth(4)
    x = width/2
    y = height/2
    z = 0

    
def draw():
    global x, y, z
    translate(x, y, z)
    rotateX(sin(frameCount * 0.008))
    rotateY(cos(frameCount * 0.008))
    background(10)
    sphere(50)
    box(100)
    saveFrame('Box-######.tif')
