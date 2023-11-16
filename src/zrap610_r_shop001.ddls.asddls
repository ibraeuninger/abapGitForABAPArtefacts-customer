@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: '##GENERATED ZRAP610SHOP001'
define root view entity ZRAP610_R_SHOP001
  as select from zrap610shop001 as Onlineshop

  association [1..1] to ZRAP610_I_PRODUCT_VH as _Product on $projection.OrderItemID = _Product.Product

{
  key order_uuid               as OrderUUID,
      order_id                 as OrderID,
      order_item_id            as OrderItemID,
      @Semantics.amount.currencyCode: 'Currency'
      order_item_price         as OrderItemPrice,
      order_item_quantity      as OrderItemQuantity,
      @Semantics.amount.currencyCode: 'Currency'
      total_price              as TotalPrice,
      currency                 as Currency,
      overall_status           as OverallStatus,
      overall_status_indicator as OverallStatusIndicator,
      delivery_date            as DeliveryDate,
      notes                    as Notes,
      purchase_requisition     as PurchaseRequisition,
      purch_rqn_creation_date  as PurchRqnCreationDate,
      @Semantics.user.createdBy: true
      created_by               as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at               as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by          as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at          as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at    as LocalLastChangedAt,
      
      // Product Association
      _Product.ProductGroup,
      _Product.ProductText as ProductText,
      _Product.BaseUnit,
      _Product

}
