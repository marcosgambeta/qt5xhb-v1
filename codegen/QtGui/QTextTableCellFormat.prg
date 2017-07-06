$header

#include "hbclass.ch"

CLASS QTextTableCellFormat INHERIT QTextCharFormat

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setTopPadding
   METHOD topPadding
   METHOD setBottomPadding
   METHOD bottomPadding
   METHOD setLeftPadding
   METHOD leftPadding
   METHOD setRightPadding
   METHOD rightPadding
   METHOD setPadding

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTextTableCellFormat()
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_NEW )
{
  QTextTableCellFormat * o = new QTextTableCellFormat ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_ISVALID )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
void setTopPadding(qreal padding)
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_SETTOPPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTopPadding ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal topPadding() const
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_TOPPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->topPadding () );
  }
}


/*
void setBottomPadding(qreal padding)
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_SETBOTTOMPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBottomPadding ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal bottomPadding() const
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_BOTTOMPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->bottomPadding () );
  }
}


/*
void setLeftPadding(qreal padding)
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_SETLEFTPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLeftPadding ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal leftPadding() const
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_LEFTPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->leftPadding () );
  }
}


/*
void setRightPadding(qreal padding)
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_SETRIGHTPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRightPadding ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal rightPadding() const
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_RIGHTPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->rightPadding () );
  }
}


/*
void setPadding(qreal padding)
*/
HB_FUNC_STATIC( QTEXTTABLECELLFORMAT_SETPADDING )
{
  QTextTableCellFormat * obj = (QTextTableCellFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPadding ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
