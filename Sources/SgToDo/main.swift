import Seagull
import NIOHTTP1

func pingHandler(_ request: SgRequest, _ ctx: SgRequestContext) -> SgResult {
    let status = ["active": true]
    return ctx.encode(dict: status)
}

let logger = DefaultLogger()

do {
    logger.info("Starting SgToDo server")
    
    var router = Router()
    
    try router.add(method: .GET, relativePath: "/ping", handler: pingHandler)
    
    let engine = Engine(router: router)
    try engine.run(host: "localhost", port: 8010)
    
    defer { try! engine.close() }
    try engine.waitForCompletion()
    
} catch let err {
    logger.error("Couldn't start server: \(err)")
}

