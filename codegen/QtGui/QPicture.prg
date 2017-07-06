$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QPicture INHERIT QPaintDevice

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD boundingRect
   METHOD data
   METHOD isNull
   METHOD load
   METHOD play
   METHOD save
   METHOD setBoundingRect
   METHOD setData
   METHOD size
   METHOD swap

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QPicture ( int formatVersion = -1 )
*/
void QPicture_new1 ()
{
  int par1 = ISNIL(1)? -1 : hb_parni(1);
  QPicture * o = new QPicture ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPicture ( const QPicture & pic )
*/
void QPicture_new2 ()
{
  QPicture * o = new QPicture ( *PQPICTURE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QPicture ( int formatVersion = -1 )
//[2]QPicture ( const QPicture & pic )

HB_FUNC_STATIC( QPICTURE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QPicture_new1();
  }
  else if( ISNUMPAR(1) && ISQPICTURE(1) )
  {
    QPicture_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QRect boundingRect () const
*/
HB_FUNC_STATIC( QPICTURE_BOUNDINGRECT )
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->boundingRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
const char * data () const
*/
HB_FUNC_STATIC( QPICTURE_DATA )
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const char * str1 = obj->data ();
    hb_retc( str1 );
  }
}

/*
bool isNull () const
*/
HB_FUNC_STATIC( QPICTURE_ISNULL )
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}

/*
bool load ( const QString & fileName, const char * format = 0 )
*/
void QPicture_load1 ()
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->load ( PQSTRING(1), OPCONSTCHAR(2,0) ) );
  }
}

/*
bool load ( QIODevice * dev, const char * format = 0 )
*/
void QPicture_load2 ()
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->load ( PQIODEVICE(1), OPCONSTCHAR(2,0) ) );
  }
}

//[1]bool load ( const QString & fileName, const char * format = 0 )
//[2]bool load ( QIODevice * dev, const char * format = 0 )

HB_FUNC_STATIC( QPICTURE_LOAD )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTCHAR(2) )
  {
    QPicture_load1();
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && ISOPTCHAR(2) )
  {
    QPicture_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool play ( QPainter * painter )
*/
HB_FUNC_STATIC( QPICTURE_PLAY )
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTER(1) )
    {
      RBOOL( obj->play ( PQPAINTER(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool save ( const QString & fileName, const char * format = 0 )
*/
void QPicture_save1 ()
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->save ( PQSTRING(1), OPCONSTCHAR(2,0) ) );
  }
}

/*
bool save ( QIODevice * dev, const char * format = 0 )
*/
void QPicture_save2 ()
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->save ( PQIODEVICE(1), OPCONSTCHAR(2,0) ) );
  }
}

//[1]bool save ( const QString & fileName, const char * format = 0 )
//[2]bool save ( QIODevice * dev, const char * format = 0 )

HB_FUNC_STATIC( QPICTURE_SAVE )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTCHAR(2) )
  {
    QPicture_save1();
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && ISOPTCHAR(2) )
  {
    QPicture_save2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setBoundingRect ( const QRect & r )
*/
HB_FUNC_STATIC( QPICTURE_SETBOUNDINGRECT )
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQRECT(1) )
    {
      obj->setBoundingRect ( *PQRECT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setData ( const char * data, uint size )
*/
HB_FUNC_STATIC( QPICTURE_SETDATA )
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISNUM(2) )
    {
      obj->setData ( PCONSTCHAR(1), (uint) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
uint size () const
*/
HB_FUNC_STATIC( QPICTURE_SIZE )
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->size () );
  }
}

/*
void swap ( QPicture & other )
*/
HB_FUNC_STATIC( QPICTURE_SWAP )
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPICTURE(1) )
    {
      QPicture * par1 = (QPicture *) _qt5xhb_itemGetPtr(1);
      obj->swap ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
