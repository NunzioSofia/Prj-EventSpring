<%@include file="header2.jsp" %>


<div class="bg-contact2">
    <div class="container-contact2">
        <div class="wrap-contact2">
        
          <form action="addEvento" method="post" class="contact2-form validate-form">
                <span class="contact2-form-title">
                    Inserisci i dati dell'evento:
                </span>

    
                <div class="wrap-input2 validate-input" data-validate="required">
                    <input class="input2" type="text" name="titolo" required="required">
                    <span class="focus-input2" data-placeholder="TITOLO"></span>
                </div>

                <div class="wrap-input2 validate-input" data-validate="required">
                    <input class="input2" type="text" name="citta" required="required">
                    <span class="focus-input2" data-placeholder="CITTÀ"></span>
                </div>

                <div class="wrap-input2 validate-input" data-validate="required">
                    <input class="input2" type="text" name="luogo" required="required">
                    <span class="focus-input2" data-placeholder="LUOGO"></span>
                </div>

                <div class="wrap-input2 validate-input" data-validate="required">
                    <input class="input2" type="date" name="dataInizio" required="required">
                    <span class="focus-input2" data-placeholder="DATA INIZIO"></span>
                </div>
                
               <div class="wrap-input2 validate-input" data-validate="required">
                    <input class="input2" type="text" name="oraInizio" required="required">
                    <span class="focus-input2" data-placeholder="ORA INIZIO"></span>
                </div> 
                
                  <div class="wrap-input2 validate-input" data-validate="required">
                    <br>
                    <input class="input2" type="date" name="dataFine" required="required">
                    <span class="focus-input2" data-placeholder="DATA FINE"></span>
                </div>

                <div class="wrap-input2 validate-input" data-validate = "required">
                    <textarea class="input2" name="descrizione" required="required"></textarea>
                    <span class="focus-input2" data-placeholder="DESCRIZIONE"></span>
                </div>
				 
                <div class="wrap-input2 validate-input">
                    <br>
                    <br>
                    <label class="custom-file-upload">
                      <input class="input2" type="file" name="immagine" >
                      <i class="fa fa-cloud-upload"></i> AGGIUNGI
                    </label>
                      <span class="focus-input2" data-placeholder="IMMAGINE (opzionale)"></span>
                </div>

                <div class="wrap-input2 validate-input">
                    <br>
                    <br>
                    <label class="custom-file-upload">
                      <input class="input2" type="file" name="locandina" >
                      <i class="fa fa-cloud-upload"></i> AGGIUNGI
                    </label>
                    <span class="focus-input2"  data-placeholder="LOCANDINA (opzionale)"></span>
                </div>

                
                <div class="wrap-input2 validate-input">
                    <input class="input2" type="url" name="paginaWeb">
                    <span class="focus-input2" data-placeholder="PAGINA WEB (opzionale)"></span>
                </div>

                
                    <div Align="center">
                        
                        <button type="submit" class="btn btn-1">
                            INSERISCI EVENTO
                        </button>
                    </div>
                </div>
            </form>

                
            </div>
        </div>
    </div>
            




<%@include file="footer.jsp" %>