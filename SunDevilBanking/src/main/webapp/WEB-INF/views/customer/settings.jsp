<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="joda" uri="http://www.joda.org/joda/time/tags"%>
<t:page>


		<div class="page-header">
			<h1>Your Settings:</h1>
		</div>

        <div id="customer-settings">

		<c:if test="${!empty successMsg}">
			<div class="alert alert-success">${fn:escapeXml(successMsg)}</div>
		</c:if>
		<c:if test="${!empty failureMsg}">
			<div class="alert alert-danger">
				${fn:escapeXml(failureMsg)}:
				<form:errors path="*" cssClass="error" />
			</div>
		</c:if>

		<div class="modal-body">
            <form:form method="POST" modelAttribute="user" action="customer-setting">
              <form:input type="hidden" path="customerID" id="customerID"/>
				<p>
					<label>First Name:</label>
					<form:input class="form-control" path="firstName" id="firstName"  minlength='2' maxlength='35' required='required'/>
				</p>
				<p>
					<label>Last Name:</label>
					<form:input class="form-control" path="lastName" id="lastName" minlength='3' maxlength='70' required='required'/>
				</p>
				<p>
					<label>Address:</label>
					<form:input path="addressLine1" id="addressLine1" type="text" 
						Class="form-control" placeholder="ex: 1009 E University Dr" minlength='5' maxlength='50' required='required' />
				</p>
				
				<p>
					<label>Email:</label>
					<form:input path="email" id="email" type="email" required='required'
						class="form-control" placeholder="ex:john@example.com" disabled='true' />
				</p>
				
				<p>
					<label>Phone No:</label>
					<form:input path="phone"  id="phone" type="number" required='required'
						class="form-control" placeholder="ex:986-712-345" />
				</p>
				
				<p>
					<label>Zip Code:</label>
					<form:input path="zipCode" id="zipCode" type="number" required='required'
						class="form-control" placeholder="ex:85281" />
				</p>
			
				<p>
					<label>State:</label>
					<form:input path="state" id="state" type="text" minlength='2' maxlength='2' required='required'
						class="form-control" placeholder="AZ" />
				</p>	
				<p>
					<label>Provide Access to Transactions</label>
					<form:radiobutton path="employeeOverride"  
						 value="1"/>Yes
					<form:radiobutton path="employeeOverride"  
						 value = "0"/>No	
				</p>
				<div class="modal-footer">
					<button type="submit" class="btn btn-success" >Submit</button>
				</div>
                          
            </form:form>
			</div>
			</div>
            
      <div id="virtualKeyboard">        
      </div>

   



  
</t:page>
