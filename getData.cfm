<cftry>
    <cfparam name="url.start"  default="0">
    <cfparam name="url.length"  default="10">
    <cfparam name="url.draw"  default="1">
    <cfset variables.limit= url.start + url.length>
    
    <cfhttp url="https://pokeapi.co/api/v2/pokemon?limit=#url.length#&offset=#url.start#" timeout="10" method="get" result="res">
    
    </cfhttp>
   
    <cfset variables.responseData = deserializeJSON(res.filecontent)>
   
    <cfset variables.dataOutput =   {
        'draw'              = url.draw,
        'recordsFiltered'   = variables.responseData.count,
        'recordsTotal'      = variables.responseData.count,
        'data'      = []
    }>

 
    <cfset counter = 1>
    <cfloop array="#variables.responseData.results#" index="i">
        
        <cfset variables.thisData  = []>
        <cfhttp url="#i.url#" timeout="10" method="get" result="resx">
        </cfhttp>
        <cfset thisResult = deserializeJSON(resx.filecontent) >
        <cfset variables.appendData ={
            "name"              :   thisResult["name"],
            "image"             :   thisResult["sprites"]["front_default"],
            "id"                :   thisResult["order"],
            "base_experience"   :   thisResult["base_experience"]
        }>

        <cfset arrayappend(variables.dataoutput.data,variables.appendData)>

    </cfloop>
    <cfoutput>
        #serializeJSON(variables.dataOutput)#
    </cfoutput>
    <cfcatch>
        <cfdump var="#cfcatch#" >
    </cfcatch>
</cftry>