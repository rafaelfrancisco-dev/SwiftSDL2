import CSDL2
import Foundation

let SCREEN_WIDTH: Int32 = 1024
let SCREEN_HEIGHT: Int32 = 680


func main() {
    SDL.initialize([.video])
    let windowTest = Window(title: "Title", position: Point(x: 10, y: 10), size: Size(width: 200, height: 400), flags: [.openGL]) 
    let surface = Surface(from:"/home/derp/Developer/Swift/SDL2Test/Sources/SwiftSDL2/sdl.jpeg" )
    let renderer = Renderer(window: windowTest)
    var quit = false
    var event = SDL_Event()
    let points = [
        Point(x: 10, y: 10),
        Point(x: 20, y: 20),
        Point(x: 30, y: 30),
        Point(x: 40, y: 10),
        Point(x: 50, y: 40),
        Point(x: 60, y: 10)
    ]

    // figure out best way to handle texture updating
    // var bytesPointer = UnsafeMutableRawPointer.allocate(byteCount: 4, alignment: 4)
    // bytesPointer.storeBytes(of: 255, as: UInt32.self)
    // // hmm think of a way to handle texture updates internal to the class.
    // var pixels = [UInt32](repeating: 0, count: 200 * 400)
    // var surfacePixels = surface._surfacePtr?.pointee.pixels
    // var value: UInt32 = 255
    // memcpy(&pixels, bytesPointer, 200 * 400 * MemoryLayout<UInt32>.size)
    // print(pixels)

    let tex = Texture(renderer: renderer, image: "/home/derp/Developer/Swift/SDL2Test/Sources/SwiftSDL2/sdl.jpeg")
    print(tex.query())
    let format = tex.query().format
    switch format {
        case .rgb888:
            print("RGB8 \(format)")
        default:
            print(format)
    }
    while !quit {
        let start = SDL_GetPerformanceCounter()
         while(SDL_PollEvent(&event) != 0) {
            switch event.type {
                case SDL_WINDOWEVENT.rawValue:
                if let eventType = WindowEventID(rawValue: event.window.event) {
                    switch eventType {
                        default:
                            print("Event: \(eventType)")
                    }
                }
                case SDL_QUIT.rawValue:
                    quit = true
            default:
                break
            }
        }
        renderer.scale = Vector2(x: 2.0, y: 2.0)
        // probably some retain issue. 
        // Fix this so it isnt a self reference. Maybe window.render() which passes in its renderer?
        // Definitely leaking. fix this.
        // renderer.render { rndr in
        //     rndr?.drawColor = Color(hex: 0x005DAA)
        //     rndr?.clear()

        //     let rect = Rect(x: 10, y: 10, w: 20, h: 20)
        //     rndr?.drawColor = Color(r: 255, g: 0, b: 0, a: 255)
        //     rndr?.fillRect(rect)
        //     rndr?.drawLines(points: points, color: Color(r: 255, g: 255, b: 0, a: 255))
        // }
        renderer.renderCopy(texture: tex)
        // print(renderer.rendererInfo)
        renderer.present()
        let end = SDL_GetPerformanceCounter()
        let elapsed:Float = Float(end-start) / Float(SDL_GetPerformanceFrequency())
        // print("FPS: \(1.0/elapsed)")
    }
   

    SDL.quit()
    return 
}

main()