$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QVARIANT
REQUEST QFONT
REQUEST QICON
REQUEST QSIZE
REQUEST QTREEWIDGET
REQUEST QCOLOR
#endif

CLASS QTreeWidgetItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addChild
   METHOD addChildren
   METHOD background
   METHOD checkState
   METHOD child
   METHOD childCount
   METHOD childIndicatorPolicy
   METHOD clone
   METHOD columnCount
   METHOD data
   METHOD flags
   METHOD font
   METHOD foreground
   METHOD icon
   METHOD indexOfChild
   METHOD insertChild
   METHOD insertChildren
   METHOD isDisabled
   METHOD isExpanded
   METHOD isFirstColumnSpanned
   METHOD isHidden
   METHOD isSelected
   METHOD parent
   METHOD read
   METHOD removeChild
   METHOD setBackground
   METHOD setCheckState
   METHOD setChildIndicatorPolicy
   METHOD setData
   METHOD setDisabled
   METHOD setExpanded
   METHOD setFirstColumnSpanned
   METHOD setFlags
   METHOD setFont
   METHOD setForeground
   METHOD setHidden
   METHOD setIcon
   METHOD setSelected
   METHOD setSizeHint
   METHOD setStatusTip
   METHOD setText
   METHOD setTextAlignment
   METHOD setToolTip
   METHOD setWhatsThis
   METHOD sizeHint
   METHOD sortChildren
   METHOD statusTip
   METHOD takeChild
   METHOD takeChildren
   METHOD text
   METHOD textAlignment
   METHOD toolTip
   METHOD treeWidget
   METHOD type
   METHOD whatsThis
   METHOD write
   METHOD backgroundColor
   METHOD setBackgroundColor
   METHOD textColor
   METHOD setTextColor

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
explicit QTreeWidgetItem(int type = Type)
*/
void QTreeWidgetItem_new1 ()
{
  QTreeWidgetItem * o = new QTreeWidgetItem ( OPINT(1,QTreeWidgetItem::Type) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QTreeWidgetItem(const QStringList & strings, int type = Type)
*/
void QTreeWidgetItem_new2 ()
{
  QTreeWidgetItem * o = new QTreeWidgetItem ( PQSTRINGLIST(1), OPINT(2,QTreeWidgetItem::Type) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QTreeWidgetItem(QTreeWidget * view, int type = Type)
*/
void QTreeWidgetItem_new3 ()
{
  QTreeWidgetItem * o = new QTreeWidgetItem ( PQTREEWIDGET(1), OPINT(2,QTreeWidgetItem::Type) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTreeWidgetItem(QTreeWidget * view, const QStringList & strings, int type = Type)
*/
void QTreeWidgetItem_new4 ()
{
  QTreeWidgetItem * o = new QTreeWidgetItem ( PQTREEWIDGET(1), PQSTRINGLIST(2), OPINT(3,QTreeWidgetItem::Type) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTreeWidgetItem(QTreeWidget * view, QTreeWidgetItem * after, int type = Type)
*/
void QTreeWidgetItem_new5 ()
{
  QTreeWidgetItem * o = new QTreeWidgetItem ( PQTREEWIDGET(1), PQTREEWIDGETITEM(2), OPINT(3,QTreeWidgetItem::Type) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QTreeWidgetItem(QTreeWidgetItem * parent, int type = Type)
*/
void QTreeWidgetItem_new6 ()
{
  QTreeWidgetItem * o = new QTreeWidgetItem ( PQTREEWIDGETITEM(1), OPINT(2,QTreeWidgetItem::Type) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTreeWidgetItem(QTreeWidgetItem * parent, const QStringList & strings, int type = Type)
*/
void QTreeWidgetItem_new7 ()
{
  QTreeWidgetItem * o = new QTreeWidgetItem ( PQTREEWIDGETITEM(1), PQSTRINGLIST(2), OPINT(3,QTreeWidgetItem::Type) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTreeWidgetItem(QTreeWidgetItem * parent, QTreeWidgetItem * after, int type = Type)
*/
void QTreeWidgetItem_new8 ()
{
  QTreeWidgetItem * o = new QTreeWidgetItem ( PQTREEWIDGETITEM(1), PQTREEWIDGETITEM(2), OPINT(3,QTreeWidgetItem::Type) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTreeWidgetItem(const QTreeWidgetItem & other)
*/
void QTreeWidgetItem_new9 ()
{
  QTreeWidgetItem * o = new QTreeWidgetItem ( *PQTREEWIDGETITEM(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]explicit QTreeWidgetItem(int type = Type)
//[2]explicit QTreeWidgetItem(const QStringList &strings, int type = Type)
//[3]explicit QTreeWidgetItem(QTreeWidget *view, int type = Type)
//[4]QTreeWidgetItem(QTreeWidget *view, const QStringList &strings, int type = Type)
//[5]QTreeWidgetItem(QTreeWidget *view, QTreeWidgetItem *after, int type = Type)
//[6]explicit QTreeWidgetItem(QTreeWidgetItem *parent, int type = Type)
//[7]QTreeWidgetItem(QTreeWidgetItem *parent, const QStringList &strings, int type = Type)
//[8]QTreeWidgetItem(QTreeWidgetItem *parent, QTreeWidgetItem *after, int type = Type)
//[9]QTreeWidgetItem(const QTreeWidgetItem &other)

HB_FUNC_STATIC( QTREEWIDGETITEM_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QTreeWidgetItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISARRAY(1) && ISOPTNUM(2) )
  {
    QTreeWidgetItem_new2();
  }
  else if( ISBETWEEN(1,2) && ISQTREEWIDGET(1) && ISOPTNUM(2) )
  {
    QTreeWidgetItem_new3();
  }
  else if( ISBETWEEN(2,3) && ISQTREEWIDGET(1) && ISARRAY(2) && ISOPTNUM(3) )
  {
    QTreeWidgetItem_new4();
  }
  else if( ISBETWEEN(2,3) && ISQTREEWIDGET(1) && ISQTREEWIDGETITEM(2) && ISOPTNUM(3) )
  {
    QTreeWidgetItem_new5();
  }
  else if( ISBETWEEN(1,2) && ISQTREEWIDGETITEM(1) && ISOPTNUM(2) )
  {
    QTreeWidgetItem_new6();
  }
  else if( ISBETWEEN(2,3) && ISQTREEWIDGETITEM(1) && ISARRAY(2) && ISOPTNUM(3) )
  {
    QTreeWidgetItem_new7();
  }
  else if( ISBETWEEN(2,3) && ISQTREEWIDGETITEM(1) && ISQTREEWIDGETITEM(2) && ISOPTNUM(3) )
  {
    QTreeWidgetItem_new8();
  }
  else if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
  {
    QTreeWidgetItem_new9();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addChild(QTreeWidgetItem * child)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_ADDCHILD )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTREEWIDGETITEM(1) )
    {
      obj->addChild ( PQTREEWIDGETITEM(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addChildren(const QList<QTreeWidgetItem *> & children)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_ADDCHILDREN )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      QList<QTreeWidgetItem *> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int i1;
      int nLen1 = hb_arrayLen(aList1);
      for (i1=0;i1<nLen1;i1++)
      {
        par1 << (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      obj->addChildren ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QBrush background(int column) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_BACKGROUND )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QBrush * ptr = new QBrush( obj->background ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::CheckState checkState(int column) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_CHECKSTATE )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retni( obj->checkState ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTreeWidgetItem * child(int index) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_CHILD )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QTreeWidgetItem * ptr = obj->child ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int childCount() const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_CHILDCOUNT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->childCount () );
  }
}

/*
QTreeWidgetItem::ChildIndicatorPolicy childIndicatorPolicy() const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_CHILDINDICATORPOLICY )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->childIndicatorPolicy () );
  }
}

/*
virtual QTreeWidgetItem * clone() const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_CLONE )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTreeWidgetItem * ptr = obj->clone ();
    _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM" );
  }
}

/*
int columnCount() const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_COLUMNCOUNT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->columnCount () );
  }
}

/*
virtual QVariant data(int column, int role) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_DATA )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      QVariant * ptr = new QVariant( obj->data ( PINT(1), PINT(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::ItemFlags flags() const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_FLAGS )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->flags () );
  }
}

/*
QFont font(int column) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_FONT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QFont * ptr = new QFont( obj->font ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QFONT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QBrush foreground(int column) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_FOREGROUND )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QBrush * ptr = new QBrush( obj->foreground ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QIcon icon(int column) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_ICON )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QIcon * ptr = new QIcon( obj->icon ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int indexOfChild(QTreeWidgetItem * child) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_INDEXOFCHILD )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTREEWIDGETITEM(1) )
    {
      RINT( obj->indexOfChild ( PQTREEWIDGETITEM(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void insertChild(int index, QTreeWidgetItem * child)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_INSERTCHILD )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQTREEWIDGETITEM(2) )
    {
      obj->insertChild ( PINT(1), PQTREEWIDGETITEM(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertChildren(int index, const QList<QTreeWidgetItem *> & children)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_INSERTCHILDREN )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISARRAY(2) )
    {
      QList<QTreeWidgetItem *> par2;
      PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
      int i2;
      int nLen2 = hb_arrayLen(aList2);
      for (i2=0;i2<nLen2;i2++)
      {
        par2 << (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
      }
      obj->insertChildren ( PINT(1), par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isDisabled() const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_ISDISABLED )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isDisabled () );
  }
}

/*
bool isExpanded() const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_ISEXPANDED )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isExpanded () );
  }
}

/*
bool isFirstColumnSpanned() const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_ISFIRSTCOLUMNSPANNED )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isFirstColumnSpanned () );
  }
}

/*
bool isHidden() const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_ISHIDDEN )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isHidden () );
  }
}

/*
bool isSelected() const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_ISSELECTED )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isSelected () );
  }
}

/*
QTreeWidgetItem * parent() const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_PARENT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTreeWidgetItem * ptr = obj->parent ();
    _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM" );
  }
}

/*
virtual void read(QDataStream & in)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_READ )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDATASTREAM(1) )
    {
      QDataStream * par1 = (QDataStream *) _qt5xhb_itemGetPtr(1);
      obj->read ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeChild(QTreeWidgetItem * child)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_REMOVECHILD )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTREEWIDGETITEM(1) )
    {
      obj->removeChild ( PQTREEWIDGETITEM(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBackground(int column, const QBrush & brush)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETBACKGROUND )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQBRUSH(2) )
    {
      obj->setBackground ( PINT(1), *PQBRUSH(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCheckState(int column, Qt::CheckState state)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETCHECKSTATE )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->setCheckState ( PINT(1), (Qt::CheckState) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setChildIndicatorPolicy(QTreeWidgetItem::ChildIndicatorPolicy policy)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETCHILDINDICATORPOLICY )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setChildIndicatorPolicy ( (QTreeWidgetItem::ChildIndicatorPolicy) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setData(int column, int role, const QVariant & value)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETDATA )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISQVARIANT(3) )
    {
      obj->setData ( PINT(1), PINT(2), *PQVARIANT(3) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDisabled(bool disabled)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETDISABLED )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setDisabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setExpanded(bool expand)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETEXPANDED )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setExpanded ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFirstColumnSpanned(bool span)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETFIRSTCOLUMNSPANNED )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setFirstColumnSpanned ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFlags(Qt::ItemFlags flags)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETFLAGS )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setFlags ( (Qt::ItemFlags) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFont(int column, const QFont & font)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETFONT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQFONT(2) )
    {
      obj->setFont ( PINT(1), *PQFONT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setForeground(int column, const QBrush & brush)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETFOREGROUND )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQBRUSH(2) )
    {
      obj->setForeground ( PINT(1), *PQBRUSH(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHidden(bool hide)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETHIDDEN )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setHidden ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIcon(int column, const QIcon & icon)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETICON )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISQICON(2)||ISCHAR(2)) )
    {
      QIcon par2 = ISOBJECT(2)? *(QIcon *) _qt5xhb_itemGetPtr(2) : QIcon(hb_parc(2));
      obj->setIcon ( PINT(1), par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSelected(bool select)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETSELECTED )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setSelected ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizeHint(int column, const QSize & size)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETSIZEHINT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQSIZE(2) )
    {
      obj->setSizeHint ( PINT(1), *PQSIZE(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStatusTip(int column, const QString & statusTip)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETSTATUSTIP )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISCHAR(2) )
    {
      obj->setStatusTip ( PINT(1), PQSTRING(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setText(int column, const QString & text)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETTEXT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISCHAR(2) )
    {
      obj->setText ( PINT(1), PQSTRING(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextAlignment(int column, int alignment)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETTEXTALIGNMENT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->setTextAlignment ( PINT(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setToolTip(int column, const QString & toolTip)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETTOOLTIP )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISCHAR(2) )
    {
      obj->setToolTip ( PINT(1), PQSTRING(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWhatsThis(int column, const QString & whatsThis)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETWHATSTHIS )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISCHAR(2) )
    {
      obj->setWhatsThis ( PINT(1), PQSTRING(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize sizeHint(int column) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SIZEHINT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QSize * ptr = new QSize( obj->sizeHint ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void sortChildren(int column, Qt::SortOrder order)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SORTCHILDREN )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->sortChildren ( PINT(1), (Qt::SortOrder) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString statusTip(int column) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_STATUSTIP )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQSTRING( obj->statusTip ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTreeWidgetItem * takeChild(int index)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_TAKECHILD )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QTreeWidgetItem * ptr = obj->takeChild ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QTREEWIDGETITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<QTreeWidgetItem *> takeChildren()
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_TAKECHILDREN )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QTreeWidgetItem *> list = obj->takeChildren ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QTREEWIDGETITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QTREEWIDGETITEM" );
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
        hb_itemPutPtr( pItem, (QTreeWidgetItem *) list[i] );
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
QString text(int column) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_TEXT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQSTRING( obj->text ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int textAlignment(int column) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_TEXTALIGNMENT )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RINT( obj->textAlignment ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toolTip(int column) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_TOOLTIP )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQSTRING( obj->toolTip ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTreeWidget * treeWidget() const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_TREEWIDGET )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTreeWidget * ptr = obj->treeWidget ();
    _qt5xhb_createReturnClass ( ptr, "QTREEWIDGET" );
  }
}

/*
int type() const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_TYPE )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->type () );
  }
}

/*
QString whatsThis(int column) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_WHATSTHIS )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQSTRING( obj->whatsThis ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void write(QDataStream & out) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_WRITE )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDATASTREAM(1) )
    {
      QDataStream * par1 = (QDataStream *) _qt5xhb_itemGetPtr(1);
      obj->write ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QColor backgroundColor(int column) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_BACKGROUNDCOLOR )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QColor * ptr = new QColor( obj->backgroundColor ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setBackgroundColor(int column, const QColor &color)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETBACKGROUNDCOLOR )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISQCOLOR(2)||ISCHAR(2)) )
    {
      QColor par2 = ISOBJECT(2)? *(QColor *) _qt5xhb_itemGetPtr(2) : QColor(hb_parc(2));
      obj->setBackgroundColor ( PINT(1), par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QColor textColor(int column) const
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_TEXTCOLOR )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QColor * ptr = new QColor( obj->textColor ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setTextColor(int column, const QColor &color)
*/
HB_FUNC_STATIC( QTREEWIDGETITEM_SETTEXTCOLOR )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISQCOLOR(2)||ISCHAR(2)) )
    {
      QColor par2 = ISOBJECT(2)? *(QColor *) _qt5xhb_itemGetPtr(2) : QColor(hb_parc(2));
      obj->setTextColor ( PINT(1), par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
