$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QColormap

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD colorAt
   METHOD colormap
   METHOD depth
   METHOD mode
   METHOD pixel
   METHOD size
   METHOD instance

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QColor>

/*
QColormap ( const QColormap & colormap )
*/
HB_FUNC_STATIC( QCOLORMAP_NEW )
{
  QColormap * o = new QColormap ( *PQCOLORMAP(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
const QColor colorAt ( uint pixel ) const
*/
HB_FUNC_STATIC( QCOLORMAP_COLORAT )
{
  QColormap * obj = (QColormap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->colorAt ( (uint) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
const QVector<QColor> colormap () const
*/
HB_FUNC_STATIC( QCOLORMAP_COLORMAP )
{
  QColormap * obj = (QColormap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector<QColor> list = obj->colormap ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QCOLOR" );
    #else
    pDynSym = hb_dynsymFindName( "QCOLOR" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QColor *) new QColor ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
int depth () const
*/
HB_FUNC_STATIC( QCOLORMAP_DEPTH )
{
  QColormap * obj = (QColormap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->depth () );
  }
}


/*
Mode mode () const
*/
HB_FUNC_STATIC( QCOLORMAP_MODE )
{
  QColormap * obj = (QColormap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->mode () );
  }
}


/*
uint pixel ( const QColor & color ) const
*/
HB_FUNC_STATIC( QCOLORMAP_PIXEL )
{
  QColormap * obj = (QColormap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
    hb_retni( obj->pixel ( par1 ) );
  }
}


/*
int size () const
*/
HB_FUNC_STATIC( QCOLORMAP_SIZE )
{
  QColormap * obj = (QColormap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->size () );
  }
}



/*
static QColormap instance ( int screen = -1 )
*/
HB_FUNC_STATIC( QCOLORMAP_INSTANCE )
{
  if( ISOPTNUM(1) )
  {
    QColormap * ptr = new QColormap( QColormap::instance ( OPINT(1,-1) ) );
    _qt5xhb_createReturnClass ( ptr, "QCOLORMAP" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
