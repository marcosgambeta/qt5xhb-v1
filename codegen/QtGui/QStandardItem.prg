$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QICON
REQUEST QSIZE
REQUEST QFONT
REQUEST QBRUSH
REQUEST QMODELINDEX
REQUEST QSTANDARDITEMMODEL
#endif

CLASS QStandardItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD data
   METHOD setData
   METHOD text
   METHOD setText
   METHOD icon
   METHOD setIcon
   METHOD toolTip
   METHOD setToolTip
   METHOD statusTip
   METHOD setStatusTip
   METHOD whatsThis
   METHOD setWhatsThis
   METHOD sizeHint
   METHOD setSizeHint
   METHOD font
   METHOD setFont
   METHOD textAlignment
   METHOD setTextAlignment
   METHOD background
   METHOD setBackground
   METHOD foreground
   METHOD setForeground
   METHOD checkState
   METHOD setCheckState
   METHOD accessibleText
   METHOD setAccessibleText
   METHOD accessibleDescription
   METHOD setAccessibleDescription
   METHOD flags
   METHOD setFlags
   METHOD isEnabled
   METHOD setEnabled
   METHOD isEditable
   METHOD setEditable
   METHOD isSelectable
   METHOD setSelectable
   METHOD isCheckable
   METHOD setCheckable
   METHOD isTristate
   METHOD setTristate
   METHOD isDragEnabled
   METHOD setDragEnabled
   METHOD isDropEnabled
   METHOD setDropEnabled
   METHOD parent
   METHOD row
   METHOD column
   METHOD index
   METHOD model
   METHOD rowCount
   METHOD setRowCount
   METHOD columnCount
   METHOD setColumnCount
   METHOD hasChildren
   METHOD child
   METHOD setChild
   METHOD insertRow1
   METHOD insertRow2
   METHOD insertRow
   METHOD insertColumn
   METHOD insertRows1
   METHOD insertRows2
   METHOD insertRows
   METHOD insertColumns
   METHOD removeRow
   METHOD removeColumn
   METHOD removeRows
   METHOD removeColumns
   METHOD appendRow1
   METHOD appendRow2
   METHOD appendRow
   METHOD appendRows
   METHOD appendColumn
   METHOD takeChild
   METHOD takeRow
   METHOD takeColumn
   METHOD sortChildren
   METHOD clone
   METHOD type
   METHOD read
   METHOD write

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

/*
QStandardItem()
*/
HB_FUNC_STATIC( QSTANDARDITEM_NEW1 )
{
  QStandardItem * o = new QStandardItem ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QStandardItem(const QString &text)
*/
HB_FUNC_STATIC( QSTANDARDITEM_NEW2 )
{
  QStandardItem * o = new QStandardItem ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QStandardItem(const QIcon &icon, const QString &text)
*/
HB_FUNC_STATIC( QSTANDARDITEM_NEW3 )
{
  QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
  QStandardItem * o = new QStandardItem ( par1, PQSTRING(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QStandardItem(int rows, int columns = 1)
*/
HB_FUNC_STATIC( QSTANDARDITEM_NEW4 )
{
  QStandardItem * o = new QStandardItem ( PINT(1), OPINT(2,1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QStandardItem()
//[2]QStandardItem(const QString &text)
//[3]QStandardItem(const QIcon &icon, const QString &text)
//[4]QStandardItem(int rows, int columns = 1)

HB_FUNC_STATIC(QSTANDARDITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC(QSTANDARDITEM_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC(QSTANDARDITEM_NEW2 );
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    HB_FUNC_EXEC(QSTANDARDITEM_NEW3 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC(QSTANDARDITEM_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
virtual QVariant data(int role = Qt::UserRole + 1) const
*/
HB_FUNC_STATIC( QSTANDARDITEM_DATA )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->data ( OPINT(1,Qt::UserRole+1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual void setData(const QVariant &value, int role = Qt::UserRole + 1)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETDATA )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setData ( *PQVARIANT(1), OPINT(2,Qt::UserRole+1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text() const
*/
$method=|QString|text|

/*
void setText(const QString &text)
*/
$method=|void|setText|const QString &

/*
QIcon icon() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_ICON )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon () );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
void setIcon(const QIcon &icon)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETICON )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    obj->setIcon ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString toolTip() const
*/
$method=|QString|toolTip|

/*
void setToolTip(const QString &toolTip)
*/
$method=|void|setToolTip|const QString &

/*
QString statusTip() const
*/
$method=|QString|statusTip|

/*
void setStatusTip(const QString &statusTip)
*/
$method=|void|setStatusTip|const QString &

/*
QString whatsThis() const
*/
$method=|QString|whatsThis|

/*
void setWhatsThis(const QString &whatsThis)
*/
$method=|void|setWhatsThis|const QString &

/*
QSize sizeHint() const
*/
$method=|QSize|sizeHint|

/*
void setSizeHint(const QSize &sizeHint)
*/
$method=|void|setSizeHint|const QSize &

/*
QFont font() const
*/
$method=|QFont|font|

/*
void setFont(const QFont &font)
*/
$method=|void|setFont|const QFont &

/*
Qt::Alignment textAlignment() const
*/
$method=|Qt::Alignment|textAlignment|

/*
void setTextAlignment(Qt::Alignment textAlignment)
*/
$method=|void|setTextAlignment|Qt::Alignment

/*
QBrush background() const
*/
$method=|QBrush|background|

/*
void setBackground(const QBrush &brush)
*/
$method=|void|setBackground|const QBrush &

/*
QBrush foreground() const
*/
$method=|QBrush|foreground|

/*
void setForeground(const QBrush &brush)
*/
$method=|void|setForeground|const QBrush &

/*
Qt::CheckState checkState() const
*/
$method=|Qt::CheckState|checkState|

/*
void setCheckState(Qt::CheckState checkState)
*/
$method=|void|setCheckState|Qt::CheckState

/*
QString accessibleText() const
*/
$method=|QString|accessibleText|

/*
void setAccessibleText(const QString &accessibleText)
*/
$method=|void|setAccessibleText|const QString &

/*
QString accessibleDescription() const
*/
$method=|QString|accessibleDescription|

/*
void setAccessibleDescription(const QString &accessibleDescription)
*/
$method=|void|setAccessibleDescription|const QString &

/*
Qt::ItemFlags flags() const
*/
$method=|Qt::ItemFlags|flags|

/*
void setFlags(Qt::ItemFlags flags)
*/
$method=|void|setFlags|Qt::ItemFlags

/*
bool isEnabled() const
*/
$method=|bool|isEnabled|

/*
void setEnabled(bool enabled)
*/
$method=|void|setEnabled|bool

/*
bool isEditable() const
*/
$method=|bool|isEditable|

/*
void setEditable(bool editable)
*/
$method=|void|setEditable|bool

/*
bool isSelectable() const
*/
$method=|bool|isSelectable|

/*
void setSelectable(bool selectable)
*/
$method=|void|setSelectable|bool

/*
bool isCheckable() const
*/
$method=|bool|isCheckable|

/*
void setCheckable(bool checkable)
*/
$method=|void|setCheckable|bool

/*
bool isTristate() const
*/
$method=|bool|isTristate|

/*
void setTristate(bool tristate)
*/
$method=|void|setTristate|bool

/*
bool isDragEnabled() const
*/
$method=|bool|isDragEnabled|

/*
void setDragEnabled(bool dragEnabled)
*/
$method=|void|setDragEnabled|bool

/*
bool isDropEnabled() const
*/
$method=|bool|isDropEnabled|

/*
void setDropEnabled(bool dropEnabled)
*/
$method=|void|setDropEnabled|bool

/*
QStandardItem *parent() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_PARENT )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItem * ptr = obj->parent ();
    _qt5xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}

/*
int row() const
*/
$method=|int|row|

/*
int column() const
*/
$method=|int|column|

/*
QModelIndex index() const
*/
$method=|QModelIndex|index|

/*
QStandardItemModel *model() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_MODEL )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItemModel * ptr = obj->model ();
    _qt5xhb_createReturnClass ( ptr, "QSTANDARDITEMMODEL" );
  }
}

/*
int rowCount() const
*/
$method=|int|rowCount|

/*
void setRowCount(int rows)
*/
$method=|void|setRowCount|int

/*
int columnCount() const
*/
$method=|int|columnCount|

/*
void setColumnCount(int columns)
*/
$method=|void|setColumnCount|int

/*
bool hasChildren() const
*/
$method=|bool|hasChildren|

/*
QStandardItem *child(int row, int column = 0) const
*/
HB_FUNC_STATIC( QSTANDARDITEM_CHILD )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItem * ptr = obj->child ( PINT(1), OPINT(2,0) );
    _qt5xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}

/*
void setChild(int row, int column, QStandardItem *item)
*/
$internalMethod=|void|setChild,setChild1|int,int,QStandardItem *

/*
void setChild(int row, QStandardItem *item)
*/
$internalMethod=|void|setChild,setChild2|int,QStandardItem *

//[1]void setChild(int row, int column, QStandardItem *item)
//[2]void setChild(int row, QStandardItem *item)

HB_FUNC_STATIC( QSTANDARDITEM_SETCHILD )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQSTANDARDITEM(3) )
  {
    QStandardItem_setChild1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSTANDARDITEM(2) )
  {
    QStandardItem_setChild2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void insertRow(int row, const QList<QStandardItem*> &items)
*/
HB_FUNC_STATIC( QSTANDARDITEM_INSERTROW1 )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QStandardItem *> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    obj->insertRow ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRow(int row, QStandardItem *item)
*/
HB_FUNC_STATIC( QSTANDARDITEM_INSERTROW2 )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItem * par2 = (QStandardItem *) _qt5xhb_itemGetPtr(2);
    obj->insertRow ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void insertRow(int row, const QList<QStandardItem*> &items)
//[2]void insertRow(int row, QStandardItem *item)

HB_FUNC_STATIC( QSTANDARDITEM_INSERTROW )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_INSERTROW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSTANDARDITEM(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_INSERTROW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void insertColumn(int column, const QList<QStandardItem*> &items)
*/
HB_FUNC_STATIC( QSTANDARDITEM_INSERTCOLUMN )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QStandardItem *> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    obj->insertColumn ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRows(int row, const QList<QStandardItem*> &items)
*/
HB_FUNC_STATIC( QSTANDARDITEM_INSERTROWS1 )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QStandardItem *> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    obj->insertRows ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRows(int row, int count)
*/
HB_FUNC_STATIC( QSTANDARDITEM_INSERTROWS2 )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->insertRows ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void insertRows(int row, const QList<QStandardItem*> &items)
//[2]void insertRows(int row, int count)

HB_FUNC_STATIC( QSTANDARDITEM_INSERTROWS )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_INSERTROWS1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_INSERTROWS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void insertColumns(int column, int count)
*/
$method=|void|insertColumns|int,int

/*
void removeRow(int row)
*/
$method=|void|removeRow|int

/*
void removeColumn(int column)
*/
$method=|void|removeColumn|int

/*
void removeRows(int row, int count)
*/
$method=|void|removeRows|int,int

/*
void removeColumns(int column, int count)
*/
$method=|void|removeColumns|int,int

/*
void appendRow(const QList<QStandardItem*> &items)
*/
HB_FUNC_STATIC( QSTANDARDITEM_APPENDROW1 )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QStandardItem *> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->appendRow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void appendRow(QStandardItem *item)
*/
HB_FUNC_STATIC( QSTANDARDITEM_APPENDROW2 )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItem * par1 = (QStandardItem *) _qt5xhb_itemGetPtr(1);
    obj->appendRow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void appendRow(const QList<QStandardItem*> &items)
//[2]void appendRow(QStandardItem *item)

HB_FUNC_STATIC( QSTANDARDITEM_APPENDROW )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_APPENDROW1 );
  }
  else if( ISNUMPAR(1) && ISQSTANDARDITEM(1) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_APPENDROW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void appendRows(const QList<QStandardItem*> &items)
*/
HB_FUNC_STATIC( QSTANDARDITEM_APPENDROWS )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QStandardItem *> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->appendRows ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void appendColumn(const QList<QStandardItem*> &items)
*/
HB_FUNC_STATIC( QSTANDARDITEM_APPENDCOLUMN )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QStandardItem *> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->appendColumn ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStandardItem *takeChild(int row, int column = 0)
*/
HB_FUNC_STATIC( QSTANDARDITEM_TAKECHILD )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItem * ptr = obj->takeChild ( PINT(1), OPINT(2,0) );
    _qt5xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}

/*
QList<QStandardItem*> takeRow(int row)
*/
HB_FUNC_STATIC( QSTANDARDITEM_TAKEROW )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QStandardItem *> list = obj->takeRow ( PINT(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSTANDARDITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QSTANDARDITEM" );
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
        hb_itemPutPtr( pItem, (QStandardItem *) list[i] );
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
QList<QStandardItem*> takeColumn(int column)
*/
HB_FUNC_STATIC( QSTANDARDITEM_TAKECOLUMN )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QStandardItem *> list = obj->takeColumn ( PINT(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSTANDARDITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QSTANDARDITEM" );
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
        hb_itemPutPtr( pItem, (QStandardItem *) list[i] );
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
void sortChildren(int column, Qt::SortOrder order = Qt::AscendingOrder)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SORTCHILDREN )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::AscendingOrder : hb_parni(2);
    obj->sortChildren ( PINT(1), (Qt::SortOrder) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QStandardItem *clone() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_CLONE )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStandardItem * ptr = obj->clone ();
    _qt5xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}


/*
virtual int type() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_TYPE )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->type () );
  }
}


/*
virtual void read(QDataStream &in)
*/
HB_FUNC_STATIC( QSTANDARDITEM_READ )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDataStream * par1 = (QDataStream *) _qt5xhb_itemGetPtr(1);
    obj->read ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void write(QDataStream &out) const
*/
HB_FUNC_STATIC( QSTANDARDITEM_WRITE )
{
  QStandardItem * obj = (QStandardItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDataStream * par1 = (QDataStream *) _qt5xhb_itemGetPtr(1);
    obj->write ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
