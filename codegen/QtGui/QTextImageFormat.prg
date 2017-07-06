$header

#include "hbclass.ch"

CLASS QTextImageFormat INHERIT QTextCharFormat

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setName
   METHOD name
   METHOD setWidth
   METHOD width
   METHOD setHeight
   METHOD height

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTextImageFormat()
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_NEW )
{
  QTextImageFormat * o = new QTextImageFormat ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_ISVALID )
{
  QTextImageFormat * obj = (QTextImageFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
void setName(const QString &name)
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_SETNAME )
{
  QTextImageFormat * obj = (QTextImageFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString name() const
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_NAME )
{
  QTextImageFormat * obj = (QTextImageFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
void setWidth(qreal width)
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_SETWIDTH )
{
  QTextImageFormat * obj = (QTextImageFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal width() const
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_WIDTH )
{
  QTextImageFormat * obj = (QTextImageFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->width () );
  }
}


/*
void setHeight(qreal height)
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_SETHEIGHT )
{
  QTextImageFormat * obj = (QTextImageFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHeight ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal height() const
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_HEIGHT )
{
  QTextImageFormat * obj = (QTextImageFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->height () );
  }
}



#pragma ENDDUMP
