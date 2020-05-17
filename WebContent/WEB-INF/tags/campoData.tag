<%@ attribute name="id" required="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<input type="text" id="${id}" autocomplete="off" name="${id}" placeholder="<fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/>" />
<script>
	$("#${id}").datepicker({
		dateformat: 'dd/mm/yyyy',
		changeMonth: true,
		changeYear: true
		});
</script>