<%@ page import="cg.wbd.grandemonstration.service.CustomerService" %>
<%@ page import="cg.wbd.grandemonstration.service.CustomerServiceFactory" %>
<%@ page import="cg.wbd.grandemonstration.model.Customer" %>
<%!
    private CustomerService customerService = CustomerServiceFactory.getInstance();
%>
<%--<%--%>
<%--    Long id = Long.valueOf(request.getParameter("id"));--%>
<%--    Customer customer = customerService.findOne(id);--%>
<%--%>--%>
<%--action="/customers"--%>
<form  method="post">
<fieldset>
    <legend>Customer Information</legend>
    <input type="hidden" name="id" value="${customer.getId()}">
    <table>
        <tr>
            <td>Id</td>
            <td>
                ${customer.getId()}
            </td>
        </tr>
        <tr>
            <td>Name</td>
            <td>
                <input type="text" name="name" value="${customer.getName()}">
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <input type="text" name="email" value="${customer.getEmail()}">
            </td>
        </tr>
        <tr>
            <td>Address</td>
            <td>
                <input type="text" name="address" value="${customer.getAddress()}">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Update">
            </td>
        </tr>
    </table>
</fieldset>
</form>
<a href="/WEB-INF/templates/customers/list.jsp">Back to list</a>.