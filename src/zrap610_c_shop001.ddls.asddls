@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZRAP610_R_SHOP001'
define root view entity ZRAP610_C_SHOP001
  provider contract transactional_query
  as projection on ZRAP610_R_SHOP001
{
  key OrderUUID,
  OrderID,

  @Consumption.valueHelpDefinition: [{ entity: { name: 'ZRAP610_I_PRODUCT_VH', element: 'Product' }, useForValidation: true }  ]
  OrderItemID,
  OrderItemPrice,
  OrderItemQuantity,
  TotalPrice,
  Currency,
  OverallStatus,
  OverallStatusIndicator,
  DeliveryDate,
  Notes,
  PurchaseRequisition,
  PurchRqnCreationDate,
  LocalLastChangedAt,
 
  ProductGroup,
  ProductText,
  BaseUnit
  
}
