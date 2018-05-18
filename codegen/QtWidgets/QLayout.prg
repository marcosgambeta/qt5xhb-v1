%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMARGINS
REQUEST QRECT
REQUEST QLAYOUTITEM
REQUEST QWIDGET
REQUEST QSIZE
#endif

$beginClassFrom=QObject,QLayoutItem

   METHOD delete
   METHOD activate
   METHOD addItem
   METHOD addWidget
   METHOD contentsMargins
   METHOD contentsRect
   METHOD count
   METHOD indexOf
   METHOD isEnabled
   METHOD itemAt
   METHOD menuBar
   METHOD parentWidget
   METHOD removeItem
   METHOD removeWidget
   METHOD setAlignment
   METHOD setContentsMargins
   METHOD setEnabled
   METHOD setMenuBar
   METHOD setSizeConstraint
   METHOD setSpacing
   METHOD sizeConstraint
   METHOD spacing
   METHOD takeAt
   METHOD update
   METHOD expandingDirections
   METHOD geometry
   METHOD invalidate
   METHOD isEmpty
   METHOD layout
   METHOD maximumSize
   METHOD minimumSize
   METHOD setGeometry
   METHOD closestAcceptableSize

$endClass

$destructor

#pragma BEGINDUMP

$includes

%% //[1]QLayout(QWidget * parent)
%% //[2]QLayout()
%%
%% //HB_FUNC_STATIC( QLAYOUT_NEW )
%% //{
%% //  if( ISNUMPAR(1) && ISOBJECT(1) )
%% //  {
%% //    HB_FUNC_EXEC( QLAYOUT_NEW1 );
%% //  }
%% //  else if( ISNUMPAR(0) )
%% //  {
%% //    HB_FUNC_EXEC( QLAYOUT_NEW2 );
%% //  }
%% //}

$deleteMethod

$prototype=bool activate ()
$method=|bool|activate|

$prototype=virtual void addItem ( QLayoutItem * item ) = 0
$virtualMethod=|void|addItem|QLayoutItem *

$prototype=void addWidget ( QWidget * w )
$method=|void|addWidget|QWidget *

$prototype=QMargins contentsMargins () const
$method=|QMargins|contentsMargins|

$prototype=QRect contentsRect () const
$method=|QRect|contentsRect|

$prototype=virtual int count () const = 0
$virtualMethod=|int|count|

$prototype=virtual int indexOf ( QWidget * widget ) const
$virtualMethod=|int|indexOf|QWidget *

$prototype=bool isEnabled () const
$method=|bool|isEnabled|

$prototype=virtual QLayoutItem * itemAt ( int index ) const = 0
$virtualMethod=|QLayoutItem *|itemAt|int

$prototype=QWidget * menuBar () const
$method=|QWidget *|menuBar|

$prototype=QWidget * parentWidget () const
$method=|QWidget *|parentWidget|

$prototype=void removeItem ( QLayoutItem * item )
$method=|void|removeItem|QLayoutItem *

$prototype=void removeWidget ( QWidget * widget )
$method=|void|removeWidget|QWidget *

$prototype=bool setAlignment ( QWidget * w, Qt::Alignment alignment )
$internalMethod=|bool|setAlignment,setAlignment1|QWidget *,Qt::Alignment

$prototype=void setAlignment ( Qt::Alignment alignment )
$internalMethod=|void|setAlignment,setAlignment2|Qt::Alignment

$prototype=bool setAlignment ( QLayout * l, Qt::Alignment alignment )
$internalMethod=|bool|setAlignment,setAlignment3|QLayout *,Qt::Alignment

//[1]bool setAlignment ( QWidget * w, Qt::Alignment alignment )
//[2]void setAlignment ( Qt::Alignment alignment )
//[3]bool setAlignment ( QLayout * l, Qt::Alignment alignment )

HB_FUNC_STATIC( QLAYOUT_SETALIGNMENT )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    QLayout_setAlignment1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QLayout_setAlignment2();
  }
  else if( ISNUMPAR(2) && ISQLAYOUT(1) && ISNUM(2) )
  {
    QLayout_setAlignment3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setContentsMargins ( int left, int top, int right, int bottom )
$internalMethod=|void|setContentsMargins,setContentsMargins1|int,int,int,int

$prototype=void setContentsMargins ( const QMargins & margins )
$internalMethod=|void|setContentsMargins,setContentsMargins2|const QMargins &

//[1]void setContentsMargins ( int left, int top, int right, int bottom )
//[2]void setContentsMargins ( const QMargins & margins )

HB_FUNC_STATIC( QLAYOUT_SETCONTENTSMARGINS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QLayout_setContentsMargins1();
  }
  else if( ISNUMPAR(1) && ISQMARGINS(1) )
  {
    QLayout_setContentsMargins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setEnabled ( bool enable )
$method=|void|setEnabled|bool

$prototype=void setMenuBar ( QWidget * widget )
$method=|void|setMenuBar|QWidget *

$prototype=void setSizeConstraint ( SizeConstraint )
$method=|void|setSizeConstraint|QLayout::SizeConstraint

$prototype=void setSpacing ( int )
$method=|void|setSpacing|int

$prototype=SizeConstraint sizeConstraint () const
$method=|QLayout::SizeConstraint|sizeConstraint|

$prototype=int spacing () const
$method=|int|spacing|

$prototype=virtual QLayoutItem * takeAt ( int index ) = 0
$virtualMethod=|QLayoutItem *|takeAt|int

$prototype=void update ()
$method=|void|update|

$prototype=virtual Qt::Orientations expandingDirections () const
$virtualMethod=|Qt::Orientations|expandingDirections|

$prototype=virtual QRect geometry () const
$virtualMethod=|QRect|geometry|

$prototype=virtual void invalidate ()
$virtualMethod=|void|invalidate|

$prototype=virtual bool isEmpty () const
$virtualMethod=|bool|isEmpty|

$prototype=virtual QLayout * layout ()
$virtualMethod=|QLayout *|layout|

$prototype=virtual QSize maximumSize () const
$virtualMethod=|QSize|maximumSize|

$prototype=virtual QSize minimumSize () const
$virtualMethod=|QSize|minimumSize|

$prototype=virtual void setGeometry ( const QRect & r )
$virtualMethod=|void|setGeometry|const QRect &

$prototype=static QSize closestAcceptableSize ( const QWidget * widget, const QSize & size )
$staticMethod=|QSize|closestAcceptableSize|const QWidget *,const QSize &

#pragma ENDDUMP
