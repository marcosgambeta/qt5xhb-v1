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
$internalConstructor=|new1|int=QTreeWidgetItem::Type

/*
explicit QTreeWidgetItem(const QStringList & strings, int type = Type)
*/
$internalConstructor=|new2|const QStringList &,int=QTreeWidgetItem::Type

/*
explicit QTreeWidgetItem(QTreeWidget * view, int type = Type)
*/
$internalConstructor=|new3|QTreeWidget *,int=QTreeWidgetItem::Type

/*
QTreeWidgetItem(QTreeWidget * view, const QStringList & strings, int type = Type)
*/
$internalConstructor=|new4|QTreeWidget *,const QStringList &,int=QTreeWidgetItem::Type

/*
QTreeWidgetItem(QTreeWidget * view, QTreeWidgetItem * after, int type = Type)
*/
$internalConstructor=|new5|QTreeWidget *,QTreeWidgetItem *,int=QTreeWidgetItem::Type

/*
explicit QTreeWidgetItem(QTreeWidgetItem * parent, int type = Type)
*/
$internalConstructor=|new6|QTreeWidgetItem *,int=QTreeWidgetItem::Type

/*
QTreeWidgetItem(QTreeWidgetItem * parent, const QStringList & strings, int type = Type)
*/
$internalConstructor=|new7|QTreeWidgetItem *,const QStringList &,int=QTreeWidgetItem::Type

/*
QTreeWidgetItem(QTreeWidgetItem * parent, QTreeWidgetItem * after, int type = Type)
*/
$internalConstructor=|new8|QTreeWidgetItem *,QTreeWidgetItem *,int=QTreeWidgetItem::Type

/*
QTreeWidgetItem(const QTreeWidgetItem & other)
*/
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

/*
void addChild(QTreeWidgetItem * child)
*/
$method=|void|addChild|QTreeWidgetItem *

/*
void addChildren(const QList<QTreeWidgetItem *> & children)
*/
$method=|void|addChildren|const QList<QTreeWidgetItem *> &

/*
QBrush background(int column) const
*/
$method=|QBrush|background|int

/*
Qt::CheckState checkState(int column) const
*/
$method=|Qt::CheckState|checkState|int

/*
QTreeWidgetItem * child(int index) const
*/
$method=|QTreeWidgetItem *|child|int

/*
int childCount() const
*/
$method=|int|childCount|

/*
QTreeWidgetItem::ChildIndicatorPolicy childIndicatorPolicy() const
*/
$method=|QTreeWidgetItem::ChildIndicatorPolicy|childIndicatorPolicy|

/*
virtual QTreeWidgetItem * clone() const
*/
$method=|QTreeWidgetItem *|clone|

/*
int columnCount() const
*/
$method=|int|columnCount|

/*
virtual QVariant data(int column, int role) const
*/
$method=|QVariant|data|int,int

/*
Qt::ItemFlags flags() const
*/
$method=|Qt::ItemFlags|flags|

/*
QFont font(int column) const
*/
$method=|QFont|font|int

/*
QBrush foreground(int column) const
*/
$method=|QBrush|foreground|int

/*
QIcon icon(int column) const
*/
$method=|QIcon|icon|int

/*
int indexOfChild(QTreeWidgetItem * child) const
*/
$method=|int|indexOfChild|QTreeWidgetItem *

/*
void insertChild(int index, QTreeWidgetItem * child)
*/
$method=|void|insertChild|int,QTreeWidgetItem *

/*
void insertChildren(int index, const QList<QTreeWidgetItem *> & children)
*/
$method=|void|insertChildren|int,const QList<QTreeWidgetItem *> &

/*
bool isDisabled() const
*/
$method=|bool|isDisabled|

/*
bool isExpanded() const
*/
$method=|bool|isExpanded|

/*
bool isFirstColumnSpanned() const
*/
$method=|bool|isFirstColumnSpanned|

/*
bool isHidden() const
*/
$method=|bool|isHidden|

/*
bool isSelected() const
*/
$method=|bool|isSelected|

/*
QTreeWidgetItem * parent() const
*/
$method=|QTreeWidgetItem *|parent|

/*
virtual void read(QDataStream & in)
*/
$method=|void|read|QDataStream &

/*
void removeChild(QTreeWidgetItem * child)
*/
$method=|void|removeChild|QTreeWidgetItem *

/*
void setBackground(int column, const QBrush & brush)
*/
$method=|void|setBackground|int,const QBrush &

/*
void setCheckState(int column, Qt::CheckState state)
*/
$method=|void|setCheckState|int,Qt::CheckState

/*
void setChildIndicatorPolicy(QTreeWidgetItem::ChildIndicatorPolicy policy)
*/
$method=|void|setChildIndicatorPolicy|QTreeWidgetItem::ChildIndicatorPolicy

/*
virtual void setData(int column, int role, const QVariant & value)
*/
$method=|void|setData|int,int,const QVariant &

/*
void setDisabled(bool disabled)
*/
$method=|void|setDisabled|bool

/*
void setExpanded(bool expand)
*/
$method=|void|setExpanded|bool

/*
void setFirstColumnSpanned(bool span)
*/
$method=|void|setFirstColumnSpanned|bool

/*
void setFlags(Qt::ItemFlags flags)
*/
$method=|void|setFlags|Qt::ItemFlags

/*
void setFont(int column, const QFont & font)
*/
$method=|void|setFont|int,const QFont &

/*
void setForeground(int column, const QBrush & brush)
*/
$method=|void|setForeground|int,const QBrush &

/*
void setHidden(bool hide)
*/
$method=|void|setHidden|bool

/*
void setIcon(int column, const QIcon & icon)
*/
$method=|void|setIcon|int,const QIcon &

/*
void setSelected(bool select)
*/
$method=|void|setSelected|bool

/*
void setSizeHint(int column, const QSize & size)
*/
$method=|void|setSizeHint|int,const QSize &

/*
void setStatusTip(int column, const QString & statusTip)
*/
$method=|void|setStatusTip|int,const QString &

/*
void setText(int column, const QString & text)
*/
$method=|void|setText|int,const QString &

/*
void setTextAlignment(int column, int alignment)
*/
$method=|void|setTextAlignment|int,int

/*
void setToolTip(int column, const QString & toolTip)
*/
$method=|void|setToolTip|int,const QString &

/*
void setWhatsThis(int column, const QString & whatsThis)
*/
$method=|void|setWhatsThis|int,const QString &

/*
QSize sizeHint(int column) const
*/
$method=|QSize|sizeHint|int

/*
void sortChildren(int column, Qt::SortOrder order)
*/
$method=|void|sortChildren|int,Qt::SortOrder

/*
QString statusTip(int column) const
*/
$method=|QString|statusTip|int

/*
QTreeWidgetItem * takeChild(int index)
*/
$method=|QTreeWidgetItem *|takeChild|int

/*
QList<QTreeWidgetItem *> takeChildren()
*/
$method=|QList<QTreeWidgetItem *>|takeChildren|

/*
QString text(int column) const
*/
$method=|QString|text|int

/*
int textAlignment(int column) const
*/
$method=|int|textAlignment|int

/*
QString toolTip(int column) const
*/
$method=|QString|toolTip|int

/*
QTreeWidget * treeWidget() const
*/
$method=|QTreeWidget *|treeWidget|

/*
int type() const
*/
$method=|int|type|

/*
QString whatsThis(int column) const
*/
$method=|QString|whatsThis|int

/*
virtual void write(QDataStream & out) const
*/
$method=|void|write|QDataStream &

/*
QColor backgroundColor(int column) const
*/
$method=|QColor|backgroundColor|int

/*
void setBackgroundColor(int column, const QColor &color)
*/
$method=|void|setBackgroundColor|int,const QColor &

/*
QColor textColor(int column) const
*/
$method=|QColor|textColor|int

/*
void setTextColor(int column, const QColor &color)
*/
$method=|void|setTextColor|int,const QColor &

$extraMethods

#pragma ENDDUMP
