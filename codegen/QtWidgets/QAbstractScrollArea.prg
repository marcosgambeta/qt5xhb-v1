$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QWIDGET
REQUEST QSCROLLBAR
#endif

CLASS QAbstractScrollArea INHERIT QFrame

   METHOD delete
   METHOD addScrollBarWidget
   METHOD horizontalScrollBarPolicy
   METHOD setHorizontalScrollBarPolicy
   METHOD maximumViewportSize
   METHOD scrollBarWidgets
   METHOD cornerWidget
   METHOD setCornerWidget
   METHOD horizontalScrollBar
   METHOD setHorizontalScrollBar
   METHOD setViewport
   METHOD verticalScrollBar
   METHOD setVerticalScrollBar
   METHOD verticalScrollBarPolicy
   METHOD setVerticalScrollBarPolicy
   METHOD viewport
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setupViewport
   METHOD sizeAdjustPolicy
   METHOD setSizeAdjustPolicy

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
void addScrollBarWidget ( QWidget * widget, Qt::Alignment alignment )
*/
$method=|void|addScrollBarWidget|QWidget *,Qt::Alignment

/*
Qt::ScrollBarPolicy horizontalScrollBarPolicy () const
*/
$method=|Qt::ScrollBarPolicy|horizontalScrollBarPolicy|

/*
void setHorizontalScrollBarPolicy ( Qt::ScrollBarPolicy )
*/
$method=|void|setHorizontalScrollBarPolicy|Qt::ScrollBarPolicy

/*
QSize maximumViewportSize () const
*/
$method=|QSize|maximumViewportSize|

/*
QWidgetList scrollBarWidgets ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QABSTRACTSCROLLAREA_SCROLLBARWIDGETS )
{
  QAbstractScrollArea * obj = (QAbstractScrollArea *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidgetList list = obj->scrollBarWidgets ( (Qt::Alignment) hb_parni(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWIDGET" );
    #else
    pDynSym = hb_dynsymFindName( "QWIDGET" );
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
        hb_itemPutPtr( pItem, (QWidget *) list[i] );
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
QWidget * cornerWidget () const
*/
$method=|QWidget *|cornerWidget|

/*
void setCornerWidget ( QWidget * widget )
*/
$method=|void|setCornerWidget|QWidget *

/*
QScrollBar * horizontalScrollBar () const
*/
$method=|QScrollBar *|horizontalScrollBar|

/*
void setHorizontalScrollBar ( QScrollBar * scrollBar )
*/
$method=|void|setHorizontalScrollBar|QScrollBar *

/*
void setViewport ( QWidget * widget )
*/
$method=|void|setViewport|QWidget *

/*
QScrollBar * verticalScrollBar () const
*/
$method=|QScrollBar *|verticalScrollBar|

/*
void setVerticalScrollBar ( QScrollBar * scrollBar )
*/
$method=|void|setVerticalScrollBar|QScrollBar *

/*
Qt::ScrollBarPolicy verticalScrollBarPolicy () const
*/
$method=|Qt::ScrollBarPolicy|verticalScrollBarPolicy|

/*
void setVerticalScrollBarPolicy ( Qt::ScrollBarPolicy )
*/
$method=|void|setVerticalScrollBarPolicy|Qt::ScrollBarPolicy

/*
QWidget * viewport () const
*/
$method=|QWidget *|viewport|

/*
QSize minimumSizeHint () const
*/
$method=|QSize|minimumSizeHint|

/*
QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
virtual void setupViewport(QWidget *viewport)
*/
$method=|void|setupViewport|QWidget *

/*
SizeAdjustPolicy sizeAdjustPolicy() const
*/
$method=|QAbstractScrollArea::SizeAdjustPolicy|sizeAdjustPolicy|

/*
void setSizeAdjustPolicy(SizeAdjustPolicy policy)
*/
$method=|void|setSizeAdjustPolicy|QAbstractScrollArea::SizeAdjustPolicy

#pragma ENDDUMP
