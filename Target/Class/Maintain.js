#!/usr/bin/env node
const a=new(await import("commander")).Command().name("Maintain").description("\u{1F527}\u2000Maintain.").version("0.0.3");(await import("../Variable/Command.js")).default?.forEach(({Action:e,Name:o,Description:n,Arguments:t})=>{const i=a.command(o).description(typeof n<"u"?n:"").action(e);t?.forEach(({Name:r,Description:d})=>i.argument(r,d))});var m=a.parse();export{m as default};
