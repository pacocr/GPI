﻿<%@ Page Title="MODIFICAR CLIENTE" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" AutoEventWireup="true"
    Inherits="System.Web.Mvc.ViewPage<GpiERGenNHibernate.EN.GpiER.ClienteEN>" %>



<asp:Content ID="Title" runat="server" ContentPlaceHolderID="TitleContent" >

</asp:Content>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="jumbotron">
        <div class="row">
            <div class="col-sm-8">
                <h2>Modificar cliente</h2>
            </div>
            <div class="col-sm-4 margin-top padding-top">
                <form id="formBuscar" method="get" >
                    <div class="form-group">
                        <div class="input-group">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <form id="formulario" runat="server">
        <div class="row">
            <div class="col-md-8"></div>
            <div class="col-md-4">
                <h3 class="text-left">NIF del cliente: <%: Html.DisplayTextFor(m => m.Nif) %></h3>
                
            </div>
        </div>
        

        <div class="row margin-top form-group">
               <div class="col-sm-2"><strong>Nombre</strong></div>
               <div class="col-sm-10" ><%: Html.TextBoxFor(m => m.Nombre, new { @class = "form-control", @type = "text", @pattern = "^([_A-z ñáéíóú]){3,}$", @maxlength = "80", @required = "required" })%></div>        
           </div>
           <div class="row margin-top">
               <div class="col-sm-2"><strong>País</strong></div>
               <div class="col-sm-10">
                   <%= Html.DropDownListFor(m => m.PaisEnum, (IEnumerable<SelectListItem>)ViewData["Paises"], new {@class = "form-control" })%>
               </div>
            </div>
           <div class="row margin-top">
               <div class="col-sm-2"><strong>Provincia</strong></div>
               <div class="col-sm-10"><%: Html.TextBoxFor(m => m.Provincia, new { @class = "form-control", @type = "text", @pattern = "^([_A-z ñáéíóú]){3,}$", @maxlength = "50", @minlength = "9", @required = "required" })%></div>
           </div>
           <div class="row margin-top">
               <div class="col-sm-2"><strong>Dirección</strong></div>
               <div class="col-sm-10"><%: Html.TextBoxFor(m => m.Direccion, new { @class = "form-control", @type = "text", @pattern = "^([_A-z0-9 ñáéíóú]){3,}$", @maxlength = "70", @minlength = "9", @required = "required" })%></div>
           </div>
           <div class="row margin-top">
               <div class="col-sm-2"><strong>Dirección de envío</strong></div>
               <div class="col-sm-10"><%: Html.TextBoxFor(m => m.DireccionEnvio, new { @class = "form-control", @type = "text", @pattern = "^([_A-z0-9 ñáéíóú]){3,}$", @maxlength = "70", @minlength = "9", @required = "required" })%></div>
           </div>
           <div class="row margin-top">
               <div class="col-sm-2"><strong>Correo electrónico</strong></div>
               <div class="col-sm-10"><%: Html.TextBoxFor(m => m.Email, new { @class = "form-control", @type = "email", @required  = "required" })%></div>
           </div>
           <div class="row margin-top">
               <div class="col-sm-2"><strong>Descuento (%)</strong></div>
               <div class="col-sm-10"><%: Html.TextBoxFor(m => m.Descuento, new { @class = "form-control", @type = "number", @min = "0", @max = "100", @maxlength = "3", @required = "required" })%></div>
           </div>
           <div class="row margin-top">
               <div class="col-sm-2"><strong>Riesgos permitidos</strong></div>
               <div class="col-sm-10"><%: Html.TextBoxFor(m => m.RiesgosPermitidos, new { @class = "form-control", @min="0", @type = "number", @maxlength = "10", @required = "required" })%></div>
           </div>
           <div class="row margin-top">
               <div class="col-sm-2"><strong>Datos bancarios</strong></div>
               <div class="col-sm-10"><%: Html.TextBoxFor(m => m.DatosBancarios, new { @class = "form-control", @type = "text", @maxlength = "50", @required = "required" })%></div>
           </div>
           <div class="row margin-top">
               <div class="col-sm-2"><strong>Teléfono</strong></div>
               <div class="col-sm-10"><%: Html.TextBoxFor(m => m.Telefono, new { @class = "form-control", @type = "text", @pattern = "^([_0-9]){3,}$", @maxlength = "9", @required = "required" })%></div>
           </div>
           

             <div class="row margin-top">
               <div class="col-sm-2"><strong>Días de pago</strong></div>
               <div class="col-sm-10">
                    <div class="form-group" id="sandbox-container">
                        <div class='input-group date' id="datepicker">
                            <%: Html.TextBoxFor(m => m.Dias , new { @class = "form-control", @required = "required" })%>
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
               </div>
            </div>


        <div class="row margin-top text-right">
            <div class="col-md-2 col-md-offset-8"><button class="btn btn-success" type="submit">Guardar Cambios</button></div>
            <div class="col-md-2"><button class="btn btn-danger" type="button" onclick="location.href = '../../Clientes/ListaClientes'">Cancelar</button></div>
        </div>
    </form>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="Script" runat="server">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/js/select2.min.js"></script>
    <script type="text/javascript">
        $('select').select2({
            language: "es", 
            placeholder: "Seleccione una divisa"
        });
        $('#datepicker').datepicker({
                multidate: true,format: "dd/mm/yyyy",
            });

            $('#sandbox-container .input-daterange').datepicker({
        format: "dd/mm/yyyy",
        todayBtn: "linked",
        language: "es",
        orientation: "top auto",
        todayHighlight: true
    });
    </script>
</asp:Content>