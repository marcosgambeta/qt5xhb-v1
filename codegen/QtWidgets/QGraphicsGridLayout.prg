$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGRAPHICSLAYOUTITEM
REQUEST QSIZEF
#endif

CLASS QGraphicsGridLayout INHERIT QGraphicsLayout

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD alignment
   METHOD columnAlignment
   METHOD columnCount
   METHOD columnMaximumWidth
   METHOD columnMinimumWidth
   METHOD columnPreferredWidth
   METHOD columnSpacing
   METHOD columnStretchFactor
   METHOD horizontalSpacing
   METHOD itemAt
   METHOD removeItem
   METHOD rowAlignment
   METHOD rowCount
   METHOD rowMaximumHeight
   METHOD rowMinimumHeight
   METHOD rowPreferredHeight
   METHOD rowSpacing
   METHOD rowStretchFactor
   METHOD setAlignment
   METHOD setColumnAlignment
   METHOD setColumnFixedWidth
   METHOD setColumnMaximumWidth
   METHOD setColumnMinimumWidth
   METHOD setColumnPreferredWidth
   METHOD setColumnSpacing
   METHOD setColumnStretchFactor
   METHOD setHorizontalSpacing
   METHOD setRowAlignment
   METHOD setRowFixedHeight
   METHOD setRowMaximumHeight
   METHOD setRowMinimumHeight
   METHOD setRowPreferredHeight
   METHOD setRowSpacing
   METHOD setRowStretchFactor
   METHOD setSpacing
   METHOD setVerticalSpacing
   METHOD verticalSpacing
   METHOD count
   METHOD invalidate
   METHOD removeAt
   METHOD setGeometry
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsGridLayout ( QGraphicsLayoutItem * parent = 0 )
$constructor=|new|QGraphicsLayoutItem *=0

$deleteMethod

$prototype=void addItem ( QGraphicsLayoutItem * item, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
$internalMethod=|void|addItem,addItem1|QGraphicsLayoutItem *,int,int,int,int,Qt::Alignment=0

$prototype=void addItem ( QGraphicsLayoutItem * item, int row, int column, Qt::Alignment alignment = 0 )
$internalMethod=|void|addItem,addItem2|QGraphicsLayoutItem *,int,int,Qt::Alignment=0

//[1]void addItem ( QGraphicsLayoutItem * item, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
//[2]void addItem ( QGraphicsLayoutItem * item, int row, int column, Qt::Alignment alignment = 0 )

HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ADDITEM )
{
  if( ISBETWEEN(5,6) && ISQGRAPHICSLAYOUTITEM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISOPTNUM(6) )
  {
    QGraphicsGridLayout_addItem1();
  }
  else if( ISBETWEEN(3,4) && ISQGRAPHICSLAYOUTITEM(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QGraphicsGridLayout_addItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=Qt::Alignment alignment ( QGraphicsLayoutItem * item ) const
$method=|Qt::Alignment|alignment|QGraphicsLayoutItem *

$prototype=Qt::Alignment columnAlignment ( int column ) const
$method=|Qt::Alignment|columnAlignment|int

$prototype=int columnCount () const
$method=|int|columnCount|

$prototype=qreal columnMaximumWidth ( int column ) const
$method=|qreal|columnMaximumWidth|int

$prototype=qreal columnMinimumWidth ( int column ) const
$method=|qreal|columnMinimumWidth|int

$prototype=qreal columnPreferredWidth ( int column ) const
$method=|qreal|columnPreferredWidth|int

$prototype=qreal columnSpacing ( int column ) const
$method=|qreal|columnSpacing|int

$prototype=int columnStretchFactor ( int column ) const
$method=|int|columnStretchFactor|int

$prototype=qreal horizontalSpacing () const
$method=|qreal|horizontalSpacing|

$prototype=QGraphicsLayoutItem * itemAt ( int row, int column ) const
$internalMethod=|QGraphicsLayoutItem *|itemAt,itemAt1|int,int

$prototype=virtual QGraphicsLayoutItem * itemAt ( int index ) const
$internalMethod=|QGraphicsLayoutItem *|itemAt,itemAt2|int

//[1]QGraphicsLayoutItem * itemAt ( int row, int column ) const
//[2]virtual QGraphicsLayoutItem * itemAt ( int index ) const

HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ITEMAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsGridLayout_itemAt1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGraphicsGridLayout_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void removeItem ( QGraphicsLayoutItem * item )
$method=|void|removeItem|QGraphicsLayoutItem *

$prototype=Qt::Alignment rowAlignment ( int row ) const
$method=|Qt::Alignment|rowAlignment|int

$prototype=int rowCount () const
$method=|int|rowCount|

$prototype=qreal rowMaximumHeight ( int row ) const
$method=|qreal|rowMaximumHeight|int

$prototype=qreal rowMinimumHeight ( int row ) const
$method=|qreal|rowMinimumHeight|int

$prototype=qreal rowPreferredHeight ( int row ) const
$method=|qreal|rowPreferredHeight|int

$prototype=qreal rowSpacing ( int row ) const
$method=|qreal|rowSpacing|int

$prototype=int rowStretchFactor ( int row ) const
$method=|int|rowStretchFactor|int

$prototype=void setAlignment ( QGraphicsLayoutItem * item, Qt::Alignment alignment )
$method=|void|setAlignment|QGraphicsLayoutItem *,Qt::Alignment

$prototype=void setColumnAlignment ( int column, Qt::Alignment alignment )
$method=|void|setColumnAlignment|int,Qt::Alignment

$prototype=void setColumnFixedWidth ( int column, qreal width )
$method=|void|setColumnFixedWidth|int,qreal

$prototype=void setColumnMaximumWidth ( int column, qreal width )
$method=|void|setColumnMaximumWidth|int,qreal

$prototype=void setColumnMinimumWidth ( int column, qreal width )
$method=|void|setColumnMinimumWidth|int,qreal

$prototype=void setColumnPreferredWidth ( int column, qreal width )
$method=|void|setColumnPreferredWidth|int,qreal

$prototype=void setColumnSpacing ( int column, qreal spacing )
$method=|void|setColumnSpacing|int,qreal

$prototype=void setColumnStretchFactor ( int column, int stretch )
$method=|void|setColumnStretchFactor|int,int

$prototype=void setHorizontalSpacing ( qreal spacing )
$method=|void|setHorizontalSpacing|qreal

$prototype=void setRowAlignment ( int row, Qt::Alignment alignment )
$method=|void|setRowAlignment|int,Qt::Alignment

$prototype=void setRowFixedHeight ( int row, qreal height )
$method=|void|setRowFixedHeight|int,qreal

$prototype=void setRowMaximumHeight ( int row, qreal height )
$method=|void|setRowMaximumHeight|int,qreal

$prototype=void setRowMinimumHeight ( int row, qreal height )
$method=|void|setRowMinimumHeight|int,qreal

$prototype=void setRowPreferredHeight ( int row, qreal height )
$method=|void|setRowPreferredHeight|int,qreal

$prototype=void setRowSpacing ( int row, qreal spacing )
$method=|void|setRowSpacing|int,qreal

$prototype=void setRowStretchFactor ( int row, int stretch )
$method=|void|setRowStretchFactor|int,int

$prototype=void setSpacing ( qreal spacing )
$method=|void|setSpacing|qreal

$prototype=void setVerticalSpacing ( qreal spacing )
$method=|void|setVerticalSpacing|qreal

$prototype=qreal verticalSpacing () const
$method=|qreal|verticalSpacing|

$prototype=virtual int count () const
$method=|int|count|

$prototype=virtual void invalidate ()
$method=|void|invalidate|

$prototype=virtual void removeAt ( int index )
$method=|void|removeAt|int

$prototype=virtual void setGeometry ( const QRectF & rect )
$method=|void|setGeometry|const QRectF &

$prototype=virtual QSizeF  sizeHint ( Qt::SizeHint which, const QSizeF & constraint = QSizeF() ) const
$method=|QSizeF|sizeHint|Qt::SizeHint,const QSizeF &=QSizeF()

#pragma ENDDUMP
