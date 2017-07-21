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

/*
QGraphicsGridLayout ( QGraphicsLayoutItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_NEW )
{
  QGraphicsLayoutItem * par1 = ISNIL(1)? 0 : (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(1);
  QGraphicsGridLayout * o = new QGraphicsGridLayout ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
void addItem ( QGraphicsLayoutItem * item, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
*/
void QGraphicsGridLayout_addItem1 ()
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
    obj->addItem ( PQGRAPHICSLAYOUTITEM(1), PINT(2), PINT(3), PINT(4), PINT(5), (Qt::Alignment) par6 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addItem ( QGraphicsLayoutItem * item, int row, int column, Qt::Alignment alignment = 0 )
*/
void QGraphicsGridLayout_addItem2 ()
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par4 = ISNIL(4)? (int) 0 : hb_parni(4);
    obj->addItem ( PQGRAPHICSLAYOUTITEM(1), PINT(2), PINT(3), (Qt::Alignment) par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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

/*
Qt::Alignment alignment ( QGraphicsLayoutItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->alignment ( PQGRAPHICSLAYOUTITEM(1) ) );
  }
}


/*
Qt::Alignment columnAlignment ( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retni( obj->columnAlignment ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
int columnCount () const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNCOUNT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->columnCount () );
  }
}


/*
qreal columnMaximumWidth ( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNMAXIMUMWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RQREAL( obj->columnMaximumWidth ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
qreal columnMinimumWidth ( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNMINIMUMWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RQREAL( obj->columnMinimumWidth ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
qreal columnPreferredWidth ( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNPREFERREDWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RQREAL( obj->columnPreferredWidth ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
qreal columnSpacing ( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RQREAL( obj->columnSpacing ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
int columnStretchFactor ( int column ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COLUMNSTRETCHFACTOR )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->columnStretchFactor ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
qreal horizontalSpacing () const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_HORIZONTALSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->horizontalSpacing () );
  }
}


/*
QGraphicsLayoutItem * itemAt ( int row, int column ) const
*/
void QGraphicsGridLayout_itemAt1 ()
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      QGraphicsLayoutItem * ptr = obj->itemAt ( PINT(1), PINT(2) );
      _qt5xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUTITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QGraphicsLayoutItem * itemAt ( int index ) const
*/
void QGraphicsGridLayout_itemAt2 ()
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      QGraphicsLayoutItem * ptr = obj->itemAt ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUTITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


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

/*
void removeItem ( QGraphicsLayoutItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_REMOVEITEM )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeItem ( PQGRAPHICSLAYOUTITEM(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::Alignment rowAlignment ( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retni( obj->rowAlignment ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
int rowCount () const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWCOUNT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->rowCount () );
  }
}


/*
qreal rowMaximumHeight ( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWMAXIMUMHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RQREAL( obj->rowMaximumHeight ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
qreal rowMinimumHeight ( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWMINIMUMHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RQREAL( obj->rowMinimumHeight ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
qreal rowPreferredHeight ( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWPREFERREDHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RQREAL( obj->rowPreferredHeight ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
qreal rowSpacing ( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RQREAL( obj->rowSpacing ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
int rowStretchFactor ( int row ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ROWSTRETCHFACTOR )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->rowStretchFactor ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
void setAlignment ( QGraphicsLayoutItem * item, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAlignment ( PQGRAPHICSLAYOUTITEM(1), (Qt::Alignment) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnAlignment ( int column, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setColumnAlignment ( PINT(1), (Qt::Alignment) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnFixedWidth ( int column, qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNFIXEDWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setColumnFixedWidth ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnMaximumWidth ( int column, qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNMAXIMUMWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setColumnMaximumWidth ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnMinimumWidth ( int column, qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNMINIMUMWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setColumnMinimumWidth ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnPreferredWidth ( int column, qreal width )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNPREFERREDWIDTH )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setColumnPreferredWidth ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnSpacing ( int column, qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setColumnSpacing ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnStretchFactor ( int column, int stretch )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETCOLUMNSTRETCHFACTOR )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
       obj->setColumnStretchFactor ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHorizontalSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETHORIZONTALSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHorizontalSpacing ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowAlignment ( int row, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWALIGNMENT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRowAlignment ( PINT(1), (Qt::Alignment) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowFixedHeight ( int row, qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWFIXEDHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRowFixedHeight ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowMaximumHeight ( int row, qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWMAXIMUMHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRowMaximumHeight ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowMinimumHeight ( int row, qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWMINIMUMHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRowMinimumHeight ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowPreferredHeight ( int row, qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWPREFERREDHEIGHT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRowPreferredHeight ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowSpacing ( int row, qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRowSpacing ( PINT(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowStretchFactor ( int row, int stretch )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETROWSTRETCHFACTOR )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->setRowStretchFactor ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSpacing ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVerticalSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETVERTICALSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVerticalSpacing ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal verticalSpacing () const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_VERTICALSPACING )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->verticalSpacing () );
  }
}


/*
virtual int count () const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_COUNT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->count () );
  }
}


/*
virtual void invalidate ()
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_INVALIDATE )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->invalidate ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void removeAt ( int index )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_REMOVEAT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->removeAt ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setGeometry ( const QRectF & rect )
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SETGEOMETRY )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setGeometry ( *PQRECTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSizeF  sizeHint ( Qt::SizeHint which, const QSizeF & constraint = QSizeF() ) const
*/
HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_SIZEHINT )
{
  QGraphicsGridLayout * obj = (QGraphicsGridLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF par2 = ISNIL(2)? QSizeF() : *(QSizeF *) _qt5xhb_itemGetPtr(2);
    QSizeF * ptr = new QSizeF( obj->sizeHint ( (Qt::SizeHint) hb_parni(1), par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}



#pragma ENDDUMP
