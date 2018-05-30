%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QTreeWidgetItem(int type = Type)
$internalConstructor=|new1|int=QTreeWidgetItem::Type

$prototype=explicit QTreeWidgetItem(const QStringList & strings, int type = Type)
$internalConstructor=|new2|const QStringList &,int=QTreeWidgetItem::Type

$prototype=explicit QTreeWidgetItem(QTreeWidget * view, int type = Type)
$internalConstructor=|new3|QTreeWidget *,int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem(QTreeWidget * view, const QStringList & strings, int type = Type)
$internalConstructor=|new4|QTreeWidget *,const QStringList &,int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem(QTreeWidget * view, QTreeWidgetItem * after, int type = Type)
$internalConstructor=|new5|QTreeWidget *,QTreeWidgetItem *,int=QTreeWidgetItem::Type

$prototype=explicit QTreeWidgetItem(QTreeWidgetItem * parent, int type = Type)
$internalConstructor=|new6|QTreeWidgetItem *,int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem(QTreeWidgetItem * parent, const QStringList & strings, int type = Type)
$internalConstructor=|new7|QTreeWidgetItem *,const QStringList &,int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem(QTreeWidgetItem * parent, QTreeWidgetItem * after, int type = Type)
$internalConstructor=|new8|QTreeWidgetItem *,QTreeWidgetItem *,int=QTreeWidgetItem::Type

$prototype=QTreeWidgetItem(const QTreeWidgetItem & other)
$internalConstructor=|new9|const QTreeWidgetItem &

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

$prototype=void addChild(QTreeWidgetItem * child)
$method=|void|addChild|QTreeWidgetItem *

$prototype=void addChildren(const QList<QTreeWidgetItem *> & children)
$method=|void|addChildren|const QList<QTreeWidgetItem *> &

$prototype=QBrush background(int column) const
$method=|QBrush|background|int

$prototype=Qt::CheckState checkState(int column) const
$method=|Qt::CheckState|checkState|int

$prototype=QTreeWidgetItem * child(int index) const
$method=|QTreeWidgetItem *|child|int

$prototype=int childCount() const
$method=|int|childCount|

$prototype=QTreeWidgetItem::ChildIndicatorPolicy childIndicatorPolicy() const
$method=|QTreeWidgetItem::ChildIndicatorPolicy|childIndicatorPolicy|

$prototype=virtual QTreeWidgetItem * clone() const
$virtualMethod=|QTreeWidgetItem *|clone|

$prototype=int columnCount() const
$method=|int|columnCount|

$prototype=virtual QVariant data(int column, int role) const
$virtualMethod=|QVariant|data|int,int

$prototype=Qt::ItemFlags flags() const
$method=|Qt::ItemFlags|flags|

$prototype=QFont font(int column) const
$method=|QFont|font|int

$prototype=QBrush foreground(int column) const
$method=|QBrush|foreground|int

$prototype=QIcon icon(int column) const
$method=|QIcon|icon|int

$prototype=int indexOfChild(QTreeWidgetItem * child) const
$method=|int|indexOfChild|QTreeWidgetItem *

$prototype=void insertChild(int index, QTreeWidgetItem * child)
$method=|void|insertChild|int,QTreeWidgetItem *

$prototype=void insertChildren(int index, const QList<QTreeWidgetItem *> & children)
$method=|void|insertChildren|int,const QList<QTreeWidgetItem *> &

$prototype=bool isDisabled() const
$method=|bool|isDisabled|

$prototype=bool isExpanded() const
$method=|bool|isExpanded|

$prototype=bool isFirstColumnSpanned() const
$method=|bool|isFirstColumnSpanned|

$prototype=bool isHidden() const
$method=|bool|isHidden|

$prototype=bool isSelected() const
$method=|bool|isSelected|

$prototype=QTreeWidgetItem * parent() const
$method=|QTreeWidgetItem *|parent|

$prototype=virtual void read(QDataStream & in)
$virtualMethod=|void|read|QDataStream &

$prototype=void removeChild(QTreeWidgetItem * child)
$method=|void|removeChild|QTreeWidgetItem *

$prototype=void setBackground(int column, const QBrush & brush)
$method=|void|setBackground|int,const QBrush &

$prototype=void setCheckState(int column, Qt::CheckState state)
$method=|void|setCheckState|int,Qt::CheckState

$prototype=void setChildIndicatorPolicy(QTreeWidgetItem::ChildIndicatorPolicy policy)
$method=|void|setChildIndicatorPolicy|QTreeWidgetItem::ChildIndicatorPolicy

$prototype=virtual void setData(int column, int role, const QVariant & value)
$virtualMethod=|void|setData|int,int,const QVariant &

$prototype=void setDisabled(bool disabled)
$method=|void|setDisabled|bool

$prototype=void setExpanded(bool expand)
$method=|void|setExpanded|bool

$prototype=void setFirstColumnSpanned(bool span)
$method=|void|setFirstColumnSpanned|bool

$prototype=void setFlags(Qt::ItemFlags flags)
$method=|void|setFlags|Qt::ItemFlags

$prototype=void setFont(int column, const QFont & font)
$method=|void|setFont|int,const QFont &

$prototype=void setForeground(int column, const QBrush & brush)
$method=|void|setForeground|int,const QBrush &

$prototype=void setHidden(bool hide)
$method=|void|setHidden|bool

$prototype=void setIcon(int column, const QIcon & icon)
$method=|void|setIcon|int,const QIcon &

$prototype=void setSelected(bool select)
$method=|void|setSelected|bool

$prototype=void setSizeHint(int column, const QSize & size)
$method=|void|setSizeHint|int,const QSize &

$prototype=void setStatusTip(int column, const QString & statusTip)
$method=|void|setStatusTip|int,const QString &

$prototype=void setText(int column, const QString & text)
$method=|void|setText|int,const QString &

$prototype=void setTextAlignment(int column, int alignment)
$method=|void|setTextAlignment|int,int

$prototype=void setToolTip(int column, const QString & toolTip)
$method=|void|setToolTip|int,const QString &

$prototype=void setWhatsThis(int column, const QString & whatsThis)
$method=|void|setWhatsThis|int,const QString &

$prototype=QSize sizeHint(int column) const
$method=|QSize|sizeHint|int

$prototype=void sortChildren(int column, Qt::SortOrder order)
$method=|void|sortChildren|int,Qt::SortOrder

$prototype=QString statusTip(int column) const
$method=|QString|statusTip|int

$prototype=QTreeWidgetItem * takeChild(int index)
$method=|QTreeWidgetItem *|takeChild|int

$prototype=QList<QTreeWidgetItem *> takeChildren()
$method=|QList<QTreeWidgetItem *>|takeChildren|

$prototype=QString text(int column) const
$method=|QString|text|int

$prototype=int textAlignment(int column) const
$method=|int|textAlignment|int

$prototype=QString toolTip(int column) const
$method=|QString|toolTip|int

$prototype=QTreeWidget * treeWidget() const
$method=|QTreeWidget *|treeWidget|

$prototype=int type() const
$method=|int|type|

$prototype=QString whatsThis(int column) const
$method=|QString|whatsThis|int

$prototype=virtual void write(QDataStream & out) const
$virtualMethod=|void|write|QDataStream &

$prototype=QColor backgroundColor(int column) const
$method=|QColor|backgroundColor|int

$prototype=void setBackgroundColor(int column, const QColor &color)
$method=|void|setBackgroundColor|int,const QColor &

$prototype=QColor textColor(int column) const
$method=|QColor|textColor|int

$prototype=void setTextColor(int column, const QColor &color)
$method=|void|setTextColor|int,const QColor &

$extraMethods

#pragma ENDDUMP
