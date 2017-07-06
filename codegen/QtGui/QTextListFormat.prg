$header

#include "hbclass.ch"

CLASS QTextListFormat INHERIT QTextFormat

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setStyle
   METHOD style
   METHOD setIndent
   METHOD indent
   METHOD setNumberPrefix
   METHOD numberPrefix
   METHOD setNumberSuffix
   METHOD numberSuffix

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTextListFormat()
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_NEW )
{
  QTextListFormat * o = new QTextListFormat ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_ISVALID )
{
  QTextListFormat * obj = (QTextListFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
void setStyle(Style style)
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_SETSTYLE )
{
  QTextListFormat * obj = (QTextListFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStyle ( (QTextListFormat::Style) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Style style() const
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_STYLE )
{
  QTextListFormat * obj = (QTextListFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->style () );
  }
}


/*
void setIndent(int indent)
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_SETINDENT )
{
  QTextListFormat * obj = (QTextListFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIndent ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int indent() const
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_INDENT )
{
  QTextListFormat * obj = (QTextListFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->indent () );
  }
}


/*
void setNumberPrefix(const QString &numberPrefix)
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_SETNUMBERPREFIX )
{
  QTextListFormat * obj = (QTextListFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNumberPrefix ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString numberPrefix() const
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_NUMBERPREFIX )
{
  QTextListFormat * obj = (QTextListFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->numberPrefix () );
  }
}


/*
void setNumberSuffix(const QString &numberSuffix)
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_SETNUMBERSUFFIX )
{
  QTextListFormat * obj = (QTextListFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNumberSuffix ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString numberSuffix() const
*/
HB_FUNC_STATIC( QTEXTLISTFORMAT_NUMBERSUFFIX )
{
  QTextListFormat * obj = (QTextListFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->numberSuffix () );
  }
}



#pragma ENDDUMP
