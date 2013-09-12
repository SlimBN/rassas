//= require jquery
//= require jquery_ujs
//= require jquery.ui.core
//= require jquery.ui.widget
//= require jquery.ui.datepicker
//= require active_admin/application

function printPDF(pdfUrl) 
{
    var w = window.open(pdfUrl);
	w.print();
    
}