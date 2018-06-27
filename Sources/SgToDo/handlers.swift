import Seagull


struct Handlers {
    
    static func staticPage(_ req: SgRequest, _ ctx: SgRequestContext) -> SgResult {
        return ctx.encode(dict: ["file": req.urlParams["file"] ?? "not-found"])
    }
    
    // MARK: - API
    static func ping(_ : SgRequest, _ ctx: SgRequestContext) -> SgResult {
        let status = ["active": true]
        return ctx.encode(dict: status)
    }

    
}

