$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTITEMDELEGATE
REQUEST QBYTEARRAY
REQUEST QWIDGET
REQUEST QABSTRACTITEMMODEL
REQUEST QMODELINDEX
#endif

CLASS QDataWidgetMapper INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addMapping
   METHOD clearMapping
   METHOD currentIndex
   METHOD itemDelegate
   METHOD mappedPropertyName
   METHOD mappedSection
   METHOD mappedWidgetAt
   METHOD model
   METHOD orientation
   METHOD removeMapping
   METHOD rootIndex
   METHOD setItemDelegate
   METHOD setModel
   METHOD setOrientation
   METHOD setRootIndex
   METHOD setSubmitPolicy
   METHOD submitPolicy
   METHOD revert
   METHOD setCurrentIndex
   METHOD setCurrentModelIndex
   METHOD submit
   METHOD toFirst
   METHOD toLast
   METHOD toNext
   METHOD toPrevious

   METHOD onCurrentIndexChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QModelIndex>

/*
QDataWidgetMapper ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
void addMapping ( QWidget * widget, int section )
*/
$internalMethod=|void|addMapping,addMapping1|QWidget *,int

/*
void addMapping ( QWidget * widget, int section, const QByteArray & propertyName )
*/
$internalMethod=|void|addMapping,addMapping2|QWidget *,int,const QByteArray &

//[1]void addMapping ( QWidget * widget, int section )
//[2]void addMapping ( QWidget * widget, int section, const QByteArray & propertyName )

HB_FUNC_STATIC( QDATAWIDGETMAPPER_ADDMAPPING )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    QDataWidgetMapper_addMapping1();
  }
  else if( ISNUMPAR(3) && ISQWIDGET(1) && ISNUM(2) && ISQBYTEARRAY(3) )
  {
    QDataWidgetMapper_addMapping2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void clearMapping ()
*/
$method=|void|clearMapping|

/*
int currentIndex () const
*/
$method=|int|currentIndex|

/*
QAbstractItemDelegate * itemDelegate () const
*/
$method=|QAbstractItemDelegate *|itemDelegate|

/*
QByteArray mappedPropertyName ( QWidget * widget ) const
*/
$method=|QByteArray|mappedPropertyName|QWidget *

/*
int mappedSection ( QWidget * widget ) const
*/
$method=|int|mappedSection|QWidget *

/*
QWidget * mappedWidgetAt ( int section ) const
*/
$method=|QWidget *|mappedWidgetAt|int

/*
QAbstractItemModel * model () const
*/
$method=|QAbstractItemModel *|model|

/*
Qt::Orientation orientation () const
*/
$method=|Qt::Orientation|orientation|

/*
void removeMapping ( QWidget * widget )
*/
$method=|void|removeMapping|QWidget *

/*
QModelIndex rootIndex () const
*/
$method=|QModelIndex|rootIndex|

/*
void setItemDelegate ( QAbstractItemDelegate * delegate )
*/
$method=|void|setItemDelegate|QAbstractItemDelegate *

/*
void setModel ( QAbstractItemModel * model )
*/
$method=|void|setModel|QAbstractItemModel *

/*
void setOrientation ( Qt::Orientation aOrientation )
*/
$method=|void|setOrientation|Qt::Orientation

/*
void setRootIndex ( const QModelIndex & index )
*/
$method=|void|setRootIndex|const QModelIndex &

/*
void setSubmitPolicy ( SubmitPolicy policy )
*/
$method=|void|setSubmitPolicy|QDataWidgetMapper::SubmitPolicy

/*
SubmitPolicy submitPolicy () const
*/
$method=|QDataWidgetMapper::SubmitPolicy|submitPolicy|

/*
void revert ()
*/
$method=|void|revert|

/*
virtual void setCurrentIndex ( int index )
*/
$method=|void|setCurrentIndex|int

/*
void setCurrentModelIndex ( const QModelIndex & index )
*/
$method=|void|setCurrentModelIndex|const QModelIndex &

/*
bool submit ()
*/
$method=|bool|submit|

/*
void toFirst ()
*/
$method=|void|toFirst|

/*
void toLast ()
*/
$method=|void|toLast|

/*
void toNext ()
*/
$method=|void|toNext|

/*
void toPrevious ()
*/
$method=|void|toPrevious|

#pragma ENDDUMP
