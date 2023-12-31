@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data Definition'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZRAP610_I_PRODUCT_VH as select from I_Product
{
     key Product                                                 as Product,

      //  @UI.lineItem: [{ position: 20, label: 'Product Description', importance: #HIGH }]
      _Text[1: Language=$session.system_language].ProductName as ProductText,

      //  @UI.lineItem: [{ position: 30, label: 'Price', importance: #HIGH }]
      @Semantics.amount.currencyCode: 'Currency'
      case
//        when Product = 'ZPRINTER01' then cast ( 500.00 as abap.dec( 16, 2 ) )
//        when Product = 'ZPRINTER02' then cast ( 300.00 as abap.dec( 16, 2 ) )
        when Product = 'TG0013' then cast ( 550.00 as abap.dec(16,2) ) //Mobile Phone
        when Product = 'TG0014' then cast ( 550.00 as abap.dec(16,2) ) //Mobile Phone
        when Product = 'D001' then cast ( 550.00 as abap.dec(16,2) ) //Mobile Phone
        when Product = 'D002' then cast ( 499.00 as abap.dec(16,2) ) //Tablet PC
        when Product = 'D003' then cast ( 599.00 as abap.dec(16,2) ) //Apfel Pad
        when Product = 'D004' then cast ( 49.00 as abap.dec(16,2) ) //Dingens
        when Product = 'D005' then cast ( 150.00 as abap.dec(16,2) ) //Office Table
        when Product = 'D006' then cast ( 259.00 as abap.dec(16,2) ) //Office Chair
        else cast ( 100000.00 as abap.dec(16,2) ) // :-)
      end                                                     as Price,

      //  @UI.lineItem: [{ position: 40, label: 'Product Group'}]
      @UI.hidden: true
      cast ( 'EUR' as abap.cuky( 5 ) )                        as Currency,

      //  @UI.lineItem: [{ position: 50, label: 'Product Group']
      @UI.hidden: true
      ProductGroup                                            as ProductGroup,

      //  @UI.lineItem: [{ position: 60, label: 'Base Unit'}]
      @UI.hidden: true
      BaseUnit                                                as BaseUnit

}
where
     Product = 'D001'
  or Product = 'D002'
  or Product = 'D003'
  or Product = 'D004'
  or Product = 'D005'
  or Product = 'D006'
  or Product = 'TG0013'
  or Product = 'TG0014'
//  or Product = 'ZPRINTER01'
//  or Product = 'ZPRINTER02'
