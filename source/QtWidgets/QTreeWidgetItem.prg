/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

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
   //DATA class_id INIT Class_Id_QTreeWidgetItem
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QTreeWidgetItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTreeWidgetItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTreeWidgetItem>
#endif

/*
explicit QTreeWidgetItem(int type = Type)
*/
void QTreeWidgetItem_new1 ()
{
  int par1 = ISNIL(1)? QTreeWidgetItem::Type : hb_parni(1);
  QTreeWidgetItem * o = new QTreeWidgetItem ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QTreeWidgetItem(const QStringList & strings, int type = Type)
*/
void QTreeWidgetItem_new2 ()
{
  QStringList par1 = _qt5xhb_convert_array_parameter_to_qstringlist(1);
  //PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
  //int i1;
  //int nLen1 = hb_arrayLen(aStrings1);
  //for (i1=0;i1<nLen1;i1++)
  //{
  //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
  //  par1 << temp;
  //}
  int par2 = ISNIL(2)? QTreeWidgetItem::Type : hb_parni(2);
  QTreeWidgetItem * o = new QTreeWidgetItem ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QTreeWidgetItem(QTreeWidget * view, int type = Type)
*/
void QTreeWidgetItem_new3 ()
{
  QTreeWidget * par1 = (QTreeWidget *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? QTreeWidgetItem::Type : hb_parni(2);
  QTreeWidgetItem * o = new QTreeWidgetItem ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTreeWidgetItem(QTreeWidget * view, const QStringList & strings, int type = Type)
*/
void QTreeWidgetItem_new4 ()
{
  QTreeWidget * par1 = (QTreeWidget *) _qt5xhb_itemGetPtr(1);
  QStringList par2 = _qt5xhb_convert_array_parameter_to_qstringlist(2);
  //PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
  //int i2;
  //int nLen2 = hb_arrayLen(aStrings2);
  //for (i2=0;i2<nLen2;i2++)
  //{
  //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings2, i2+1) );
  //  par2 << temp;
  //}
  int par3 = ISNIL(3)? QTreeWidgetItem::Type : hb_parni(3);
  QTreeWidgetItem * o = new QTreeWidgetItem ( par1, par2, par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTreeWidgetItem(QTreeWidget * view, QTreeWidgetItem * after, int type = Type)
*/
void QTreeWidgetItem_new5 ()
{
  QTreeWidget * par1 = (QTreeWidget *) _qt5xhb_itemGetPtr(1);
  QTreeWidgetItem * par2 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(2);
  int par3 = ISNIL(3)? QTreeWidgetItem::Type : hb_parni(3);
  QTreeWidgetItem * o = new QTreeWidgetItem ( par1, par2, par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QTreeWidgetItem(QTreeWidgetItem * parent, int type = Type)
*/
void QTreeWidgetItem_new6 ()
{
  QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? QTreeWidgetItem::Type : hb_parni(2);
  QTreeWidgetItem * o = new QTreeWidgetItem ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTreeWidgetItem(QTreeWidgetItem * parent, const QStringList & strings, int type = Type)
*/
void QTreeWidgetItem_new7 ()
{
  QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
  QStringList par2 = _qt5xhb_convert_array_parameter_to_qstringlist(2);
  //PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
  //int i2;
  //int nLen2 = hb_arrayLen(aStrings2);
  //for (i2=0;i2<nLen2;i2++)
  //{
  //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings2, i2+1) );
  //  par2 << temp;
  //}
  int par3 = ISNIL(3)? QTreeWidgetItem::Type : hb_parni(3);
  QTreeWidgetItem * o = new QTreeWidgetItem ( par1, par2, par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTreeWidgetItem(QTreeWidgetItem * parent, QTreeWidgetItem * after, int type = Type)
*/
void QTreeWidgetItem_new8 ()
{
  QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
  QTreeWidgetItem * par2 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(2);
  int par3 = ISNIL(3)? QTreeWidgetItem::Type : hb_parni(3);
  QTreeWidgetItem * o = new QTreeWidgetItem ( par1, par2, par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTreeWidgetItem(const QTreeWidgetItem & other)
*/
void QTreeWidgetItem_new9 ()
{
  QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
  QTreeWidgetItem * o = new QTreeWidgetItem ( *par1 );
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

HB_FUNC_STATIC( QTREEWIDGETITEM_DELETE )
{
  QTreeWidgetItem * obj = (QTreeWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
      QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
      obj->addChild ( par1 );
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
      QBrush * ptr = new QBrush( obj->background ( (int) hb_parni(1) ) );
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
      hb_retni( obj->checkState ( (int) hb_parni(1) ) );
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
      QTreeWidgetItem * ptr = obj->child ( (int) hb_parni(1) );
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
    hb_retni( obj->childCount (  ) );
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
    hb_retni( obj->childIndicatorPolicy (  ) );
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
    QTreeWidgetItem * ptr = obj->clone (  );
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
    hb_retni( obj->columnCount (  ) );
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
      QVariant * ptr = new QVariant( obj->data ( (int) hb_parni(1), (int) hb_parni(2) ) );
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
    hb_retni( obj->flags (  ) );
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
      QFont * ptr = new QFont( obj->font ( (int) hb_parni(1) ) );
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
      QBrush * ptr = new QBrush( obj->foreground ( (int) hb_parni(1) ) );
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
      QIcon * ptr = new QIcon( obj->icon ( (int) hb_parni(1) ) );
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
      QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
      hb_retni( obj->indexOfChild ( par1 ) );
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
      QTreeWidgetItem * par2 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(2);
      obj->insertChild ( (int) hb_parni(1), par2 );
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
      obj->insertChildren ( (int) hb_parni(1), par2 );
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
    hb_retl( obj->isDisabled (  ) );
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
    hb_retl( obj->isExpanded (  ) );
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
    hb_retl( obj->isFirstColumnSpanned (  ) );
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
    hb_retl( obj->isHidden (  ) );
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
    hb_retl( obj->isSelected (  ) );
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
    QTreeWidgetItem * ptr = obj->parent (  );
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
      QTreeWidgetItem * par1 = (QTreeWidgetItem *) _qt5xhb_itemGetPtr(1);
      obj->removeChild ( par1 );
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
      QBrush * par2 = (QBrush *) _qt5xhb_itemGetPtr(2);
      obj->setBackground ( (int) hb_parni(1), *par2 );
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
      int par2 = hb_parni(2);
      obj->setCheckState ( (int) hb_parni(1),  (Qt::CheckState) par2 );
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
      int par1 = hb_parni(1);
      obj->setChildIndicatorPolicy (  (QTreeWidgetItem::ChildIndicatorPolicy) par1 );
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
      QVariant * par3 = (QVariant *) _qt5xhb_itemGetPtr(3);
      obj->setData ( (int) hb_parni(1), (int) hb_parni(2), *par3 );
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
      obj->setDisabled ( (bool) hb_parl(1) );
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
      obj->setExpanded ( (bool) hb_parl(1) );
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
      obj->setFirstColumnSpanned ( (bool) hb_parl(1) );
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
      obj->setFlags (  (Qt::ItemFlags) par1 );
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
      QFont * par2 = (QFont *) _qt5xhb_itemGetPtr(2);
      obj->setFont ( (int) hb_parni(1), *par2 );
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
      QBrush * par2 = (QBrush *) _qt5xhb_itemGetPtr(2);
      obj->setForeground ( (int) hb_parni(1), *par2 );
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
      obj->setHidden ( (bool) hb_parl(1) );
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
      obj->setIcon ( (int) hb_parni(1), par2 );
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
      obj->setSelected ( (bool) hb_parl(1) );
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
      QSize * par2 = (QSize *) _qt5xhb_itemGetPtr(2);
      obj->setSizeHint ( (int) hb_parni(1), *par2 );
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
      QString par2 = QLatin1String( hb_parc(2) );
      obj->setStatusTip ( (int) hb_parni(1), par2 );
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
      QString par2 = QLatin1String( hb_parc(2) );
      obj->setText ( (int) hb_parni(1), par2 );
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
      obj->setTextAlignment ( (int) hb_parni(1), (int) hb_parni(2) );
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
      QString par2 = QLatin1String( hb_parc(2) );
      obj->setToolTip ( (int) hb_parni(1), par2 );
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
      QString par2 = QLatin1String( hb_parc(2) );
      obj->setWhatsThis ( (int) hb_parni(1), par2 );
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
      QSize * ptr = new QSize( obj->sizeHint ( (int) hb_parni(1) ) );
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
      int par2 = hb_parni(2);
      obj->sortChildren ( (int) hb_parni(1),  (Qt::SortOrder) par2 );
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
      hb_retc( (const char *) obj->statusTip ( (int) hb_parni(1) ).toLatin1().data() );
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
      QTreeWidgetItem * ptr = obj->takeChild ( (int) hb_parni(1) );
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
    QList<QTreeWidgetItem *> list = obj->takeChildren (  );
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
      hb_retc( (const char *) obj->text ( (int) hb_parni(1) ).toLatin1().data() );
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
      hb_retni( obj->textAlignment ( (int) hb_parni(1) ) );
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
      hb_retc( (const char *) obj->toolTip ( (int) hb_parni(1) ).toLatin1().data() );
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
    QTreeWidget * ptr = obj->treeWidget (  );
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
    hb_retni( obj->type (  ) );
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
      hb_retc( (const char *) obj->whatsThis ( (int) hb_parni(1) ).toLatin1().data() );
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
      QColor * ptr = new QColor( obj->backgroundColor ( (int) hb_parni(1) ) );
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
      obj->setBackgroundColor ( (int) hb_parni(1), par2 );
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
      QColor * ptr = new QColor( obj->textColor ( (int) hb_parni(1) ) );
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
      obj->setTextColor ( (int) hb_parni(1), par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QTREEWIDGETITEM_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTREEWIDGETITEM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTREEWIDGETITEM_NEWFROM );
}

HB_FUNC_STATIC( QTREEWIDGETITEM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTREEWIDGETITEM_NEWFROM );
}

HB_FUNC_STATIC( QTREEWIDGETITEM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTREEWIDGETITEM_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
