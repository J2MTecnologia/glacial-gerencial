<%=packageName ? "package ${packageName}\n\n" : ''%>

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ${className}Controller {
    
    <%
        def props = domainClass.properties
    %>

    static allowedMethods = [save: "POST", update:["POST","PUT"], delete:["POST","DELETE"]
    ]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ${className}.list(params), model:[${propertyName}Count: ${className}.count()]
    }

    def show(${className} ${propertyName}) {
        respond ${propertyName}
    }


    <%
        for (p in props) {
            if ((p.type==([] as byte[]).class) || (p.type==([] as Byte[]).class)){
                def cp = domainClass.constrainedProperties[p.name]
    %>
    def download${p.name}(Long id){
        def ${propertyName} = ${className}.get(id)
        if (${propertyName}){
            response.setContentType("application/octet-stream")
            response.setHeader("Content-disposition", "filename=\${${propertyName}.fileName}")
            response.outputStream << ${propertyName}.${p.name} 
            return
        }
    }
    <%
            }
        }
    %>

    def create() {
        respond new ${className}(params)
    }

    @Transactional
    def save(${className} ${propertyName}) {

        <%

        for (p in props) {
            if ((p.type==([] as byte[]).class) || (p.type==([] as Byte[]).class)){               
        %>
            if(params.file !=null){
                def uploadedFile = request.getFile('${p.name}')                
                ${propertyName}.fileName = uploadedFile.originalFilename
                ${propertyName}.fileType = uploadedFile.contentType
            }
        <%
            }
        }

        %>
        if (${propertyName} == null) {
            notFound()
            return
        }

        if (${propertyName}.hasErrors()) {
            respond ${propertyName}.errors, view:'create'
            return
        }

        ${propertyName}.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: '${domainClass.propertyName}.label', default: '${className}'), ${propertyName}.id])
                redirect ${propertyName}
            }
            '*' { respond ${propertyName}, [status: CREATED] }
        }
    }

    def edit(${className} ${propertyName}) {
        respond ${propertyName}
    }

    @Transactional
    def update(${className} ${propertyName}) {
        if (${propertyName} == null) {
            notFound()
            return
        }

        if (${propertyName}.hasErrors()) {
            respond ${propertyName}.errors, view:'edit'
            return
        }

        <%      
        for (p in props) {
            if ((p.type==([] as byte[]).class) || (p.type==([] as Byte[]).class)){
                    
        %>
        def uploadedFile = request.getFile('${p.name}')        

        if (uploadedFile.empty){
            ${propertyName}.fileName = "filename"
            ${propertyName}.fileType = "filetype" 
        }
        else{
            ${propertyName}.fileName = uploadedFile.originalFilename
            ${propertyName}.fileType = uploadedFile.contentType
        }
        <%
            }
        }
        %>
        
        ${propertyName}.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: '${className}.label', default: '${className}'), ${propertyName}.id])
                redirect ${propertyName}
            }
            '*'{ respond ${propertyName}, [status: OK] }
        }
    }

    @Transactional
    def delete(${className} ${propertyName}) {

        if (${propertyName} == null) {
            notFound()
            return
        }

        ${propertyName}.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: '${className}.label', default: '${className}'), ${propertyName}.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: '${domainClass.propertyName}.label', default: '${className}'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
