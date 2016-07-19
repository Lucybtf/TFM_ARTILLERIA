<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<html>
  <head>
  <title>Ejemplo Spring MVC</title>
  </head>
  <body>    <h2>Información del Usuario</h2>
      <form:form method="POST" action="/WebApp/insertaUsuario">
          <table>
              <tr>
                  <td><form:label path="id">Id</form:label></td>
                  <td><form:input path="id" /></td>
              </tr>
              <tr>
                  <td><form:label path="nombre">Nombre</form:label></td>
                  <td><form:input path="nombre" /></td>
              </tr>
              <tr>
                  <td><form:label path="email">Email</form:label></td>
                  <td><form:input path="email" /></td>
              </tr>            <tr>
                  <td colspan="2"><input type="submit" value="Insertar" /></td>
              </tr>
          </table>
      </form:form>
  </body>
</html>