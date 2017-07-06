$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSVGRENDERER
REQUEST QSIZE
#endif

CLASS QSvgWidget INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD renderer
   METHOD sizeHint
   METHOD load1
   METHOD load2
   METHOD load

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSvgWidget ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSVGWIDGET_NEW1 )
{
  QSvgWidget * o = new QSvgWidget ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSvgWidget ( const QString & file, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSVGWIDGET_NEW2 )
{
  QSvgWidget * o = new QSvgWidget ( PQSTRING(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QSvgWidget ( QWidget * parent = 0 )
//[2]QSvgWidget ( const QString & file, QWidget * parent = 0 )

HB_FUNC_STATIC( QSVGWIDGET_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    HB_FUNC_EXEC( QSVGWIDGET_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    HB_FUNC_EXEC( QSVGWIDGET_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QSvgRenderer * renderer () const
*/
HB_FUNC_STATIC( QSVGWIDGET_RENDERER )
{
  QSvgWidget * obj = (QSvgWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSvgRenderer * ptr = obj->renderer ();
    _qt5xhb_createReturnClass ( ptr, "QSVGRENDERER" );
  }
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QSVGWIDGET_SIZEHINT )
{
  QSvgWidget * obj = (QSvgWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void load ( const QString & file )
*/
HB_FUNC_STATIC( QSVGWIDGET_LOAD1 )
{
  QSvgWidget * obj = (QSvgWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->load ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void load ( const QByteArray & contents )
*/
HB_FUNC_STATIC( QSVGWIDGET_LOAD2 )
{
  QSvgWidget * obj = (QSvgWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->load ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void load ( const QString & file )
//[2]void load ( const QByteArray & contents )

HB_FUNC_STATIC( QSVGWIDGET_LOAD )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSVGWIDGET_LOAD1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QSVGWIDGET_LOAD2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


#pragma ENDDUMP
