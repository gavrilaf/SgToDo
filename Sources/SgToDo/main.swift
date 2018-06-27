import Seagull
import NIOHTTP1


let logger = DefaultLogger()

do {
    logger.info("Starting SgToDo server")
    
    var router = Router()
    
    try router.add(method: .GET, relativePath: "/:file", handler: Handlers.staticPage)
    
    try router.add(method: .GET, relativePath: "/api/v1/ping", handler: Handlers.ping)

    let engine = Engine(router: router, logger: logger)
    try engine.run(host: "0.0.0.0", port: 8012)
    
    defer { try! engine.close() }
    try engine.waitForCompletion()
    
} catch let err {
    logger.error("Couldn't start server: \(err)")
}

