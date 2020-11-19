<%@include file="header.jsp" %>

<div class="bg-contact2">
    <div class="container-contact2">
        <div class="wrap-contact2">
    
			    <form action="aggiungiUtente" method="POST" name="myForm" id="myForm" class="contact2-form validate-form">
			    	<span class="contact2-form-title">
			                    Inserisci i tuoi dati:
			         </span>
			                
			        <div class="wrap-input2 validate-input" data-validate="required">
			                    <input class="input2" type="text" name="Nome" required="required">
			                    <span class="focus-input2" data-placeholder="NOME"></span>
			        </div>
			        <div class="wrap-input2 validate-input" data-validate="required">
			                    <input class="input2" type="text" name="Cognome" required="required">
			                    <span class="focus-input2" data-placeholder="COGNOME"></span>
			        </div>
			        <div class="wrap-input2 validate-input" data-validate="required">
			                    <input class="input2" type="text" name="Username" required="required">
			                    <span class="focus-input2" data-placeholder="USERNAME"></span>
			        </div>
			        <div class="wrap-input2 validate-input" data-validate="required">
			                    <input class="input2" type="password" name="pass" required="required">
			                    <span class="focus-input2" data-placeholder="PASSWORD"></span>
			        </div>
			     
			        <div class="wrap-input2 validate-input" data-validate="required">
			                    <input class="input2" type="text" name="Nascita" required="required">
			                    <span class="focus-input2" data-placeholder="DATA DI NASCITA"></span>
			        </div>
			            <div class="wrap-input2 validate-input" data-validate="required">
			                    <input class="input2" type="text" name="Email" required="required">
			                    <span class="focus-input2" data-placeholder="EMAIL"></span>
			        </div>
			        
			        <div class="wrap-input2 validate-input" data-validate="required">
			       				<br>
			                    <select name="Tipo" class="input2 custom-select" required="required">
			                    	<option value="a">Amministratore</option>
			           				 <option value="e">Esperto</option>
			            			<option value="b">Base</option>			            		
			           			 </select>
			                    <span class="focus-input2" data-placeholder="TIPO UTENTE"></span>
			        </div>
					
					<div Align="center">
					<input type="submit" value="Registrati" class="btn btn-1"></br></br>
					</div>
					<div Align="center">
			        <input type="reset" value="Reset" id="btnResForm" class="btn btn-1"></br>
			        </div>
			 	</form>
            </div>
        </div>
    </div>
    


<%@include file="footer.jsp" %>