/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOMPLETER
REQUEST QSIZE
REQUEST QVARIANT
REQUEST QABSTRACTITEMDELEGATE
REQUEST QICON
REQUEST QLINEEDIT
REQUEST QABSTRACTITEMMODEL
REQUEST QMODELINDEX
REQUEST QVALIDATOR
REQUEST QABSTRACTITEMVIEW
#endif

CLASS QComboBox INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD addItems
   METHOD completer
   METHOD count
   METHOD currentIndex
   METHOD currentText
   METHOD duplicatesEnabled
   METHOD findData
   METHOD findText
   METHOD hasFrame
   METHOD hidePopup
   METHOD iconSize
   METHOD insertItem
   METHOD insertItems
   METHOD insertPolicy
   METHOD insertSeparator
   METHOD isEditable
   METHOD itemData
   METHOD itemDelegate
   METHOD itemIcon
   METHOD itemText
   METHOD lineEdit
   METHOD maxCount
   METHOD maxVisibleItems
   METHOD minimumContentsLength
   METHOD model
   METHOD modelColumn
   METHOD removeItem
   METHOD rootModelIndex
   METHOD setCompleter
   METHOD setDuplicatesEnabled
   METHOD setEditable
   METHOD setFrame
   METHOD setIconSize
   METHOD setInsertPolicy
   METHOD setItemData
   METHOD setItemDelegate
   METHOD setItemIcon
   METHOD setItemText
   METHOD setLineEdit
   METHOD setMaxCount
   METHOD setMaxVisibleItems
   METHOD setMinimumContentsLength
   METHOD setModel
   METHOD setModelColumn
   METHOD setRootModelIndex
   METHOD setSizeAdjustPolicy
   METHOD setValidator
   METHOD setView
   METHOD showPopup
   METHOD sizeAdjustPolicy
   METHOD validator
   METHOD view
   METHOD event
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD clear
   METHOD clearEditText
   METHOD setCurrentIndex
   METHOD setEditText

   METHOD onActivated
   METHOD onActivatedC
   METHOD onCurrentIndexChanged
   METHOD onCurrentIndexChangedC
   METHOD onEditTextChanged
   METHOD onHighlighted
   METHOD onHighlightedC

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QComboBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QComboBox>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QComboBox>
#endif

/*
QComboBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QCOMBOBOX_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QComboBox * o = new QComboBox ( OPQWIDGET(1,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCOMBOBOX_DELETE )
{
  QComboBox * obj = (QComboBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addItem ( const QString & text, const QVariant & userData = QVariant() )
*/
void QComboBox_addItem1 ()
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(2);
    obj->addItem ( PQSTRING(1), par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addItem ( const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )
*/
void QComboBox_addItem2 ()
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    QVariant par3 = ISNIL(3)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(3);
    obj->addItem ( par1, PQSTRING(2), par3 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void addItem ( const QString & text, const QVariant & userData = QVariant() )
//[2]void addItem ( const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )

HB_FUNC_STATIC( QCOMBOBOX_ADDITEM )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) )
  {
    QComboBox_addItem1();
  }
  else if( ISBETWEEN(2,3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && (ISQVARIANT(3)||ISNIL(3)) )
  {
    QComboBox_addItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addItems ( const QStringList & texts )
*/
HB_FUNC_STATIC( QCOMBOBOX_ADDITEMS )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      obj->addItems ( PQSTRINGLIST(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QCompleter * completer () const
*/
HB_FUNC_STATIC( QCOMBOBOX_COMPLETER )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QCompleter * ptr = obj->completer ();
    _qt5xhb_createReturnClass ( ptr, "QCOMPLETER" );
  }
}

/*
int count () const
*/
HB_FUNC_STATIC( QCOMBOBOX_COUNT )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->count () );
  }
}

/*
int currentIndex () const
*/
HB_FUNC_STATIC( QCOMBOBOX_CURRENTINDEX )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->currentIndex () );
  }
}

/*
QString currentText () const
*/
HB_FUNC_STATIC( QCOMBOBOX_CURRENTTEXT )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->currentText () );
  }
}

/*
bool duplicatesEnabled () const
*/
HB_FUNC_STATIC( QCOMBOBOX_DUPLICATESENABLED )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->duplicatesEnabled () );
  }
}

/*
int findData ( const QVariant & data, int role = Qt::UserRole, Qt::MatchFlags flags = Qt::MatchExactly | Qt::MatchCaseSensitive ) const
*/
HB_FUNC_STATIC( QCOMBOBOX_FINDDATA )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQVARIANT(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
      int par3 = ISNIL(3)? (int) Qt::MatchExactly | Qt::MatchCaseSensitive : hb_parni(3);
      RINT( obj->findData ( *PQVARIANT(1), OPINT(2,Qt::UserRole), (Qt::MatchFlags) par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int findText ( const QString & text, Qt::MatchFlags flags = Qt::MatchExactly | Qt::MatchCaseSensitive ) const
*/
HB_FUNC_STATIC( QCOMBOBOX_FINDTEXT )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) Qt::MatchExactly | Qt::MatchCaseSensitive : hb_parni(2);
      RINT( obj->findText ( PQSTRING(1), (Qt::MatchFlags) par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool hasFrame () const
*/
HB_FUNC_STATIC( QCOMBOBOX_HASFRAME )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->hasFrame () );
  }
}

/*
virtual void hidePopup ()
*/
HB_FUNC_STATIC( QCOMBOBOX_HIDEPOPUP )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->hidePopup ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QCOMBOBOX_ICONSIZE )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void insertItem ( int index, const QString & text, const QVariant & userData = QVariant() )
*/
void QComboBox_insertItem1 ()
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant par3 = ISNIL(3)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(3);
    obj->insertItem ( PINT(1), PQSTRING(2), par3 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertItem ( int index, const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )
*/
void QComboBox_insertItem2 ()
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon par2 = ISOBJECT(2)? *(QIcon *) _qt5xhb_itemGetPtr(2) : QIcon(hb_parc(2));
    QVariant par4 = ISNIL(4)? QVariant() : *(QVariant *) _qt5xhb_itemGetPtr(4);
    obj->insertItem ( PINT(1), par2, PQSTRING(3), par4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void insertItem ( int index, const QString & text, const QVariant & userData = QVariant() )
//[2]void insertItem ( int index, const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )

HB_FUNC_STATIC( QCOMBOBOX_INSERTITEM )
{
  if( ISBETWEEN(2,3) && ISNUM(1) && ISCHAR(2) && (ISQVARIANT(3)||ISNIL(3)) )
  {
    QComboBox_insertItem1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) && (ISQVARIANT(4)||ISNIL(4)) )
  {
    QComboBox_insertItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void insertItems ( int index, const QStringList & list )
*/
HB_FUNC_STATIC( QCOMBOBOX_INSERTITEMS )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISARRAY(2) )
    {
      obj->insertItems ( PINT(1), PQSTRINGLIST(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
InsertPolicy insertPolicy () const
*/
HB_FUNC_STATIC( QCOMBOBOX_INSERTPOLICY )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->insertPolicy () );
  }
}

/*
void insertSeparator ( int index )
*/
HB_FUNC_STATIC( QCOMBOBOX_INSERTSEPARATOR )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->insertSeparator ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isEditable () const
*/
HB_FUNC_STATIC( QCOMBOBOX_ISEDITABLE )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isEditable () );
  }
}

/*
QVariant itemData ( int index, int role = Qt::UserRole ) const
*/
HB_FUNC_STATIC( QCOMBOBOX_ITEMDATA )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTNUM(2) )
    {
      QVariant * ptr = new QVariant( obj->itemData ( PINT(1), OPINT(2,Qt::UserRole) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAbstractItemDelegate * itemDelegate () const
*/
HB_FUNC_STATIC( QCOMBOBOX_ITEMDELEGATE )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractItemDelegate * ptr = obj->itemDelegate ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMDELEGATE" );
  }
}

/*
QIcon itemIcon ( int index ) const
*/
HB_FUNC_STATIC( QCOMBOBOX_ITEMICON )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QIcon * ptr = new QIcon( obj->itemIcon ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString itemText ( int index ) const
*/
HB_FUNC_STATIC( QCOMBOBOX_ITEMTEXT )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQSTRING( obj->itemText ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QLineEdit * lineEdit () const
*/
HB_FUNC_STATIC( QCOMBOBOX_LINEEDIT )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLineEdit * ptr = obj->lineEdit ();
    _qt5xhb_createReturnClass ( ptr, "QLINEEDIT" );
  }
}

/*
int maxCount () const
*/
HB_FUNC_STATIC( QCOMBOBOX_MAXCOUNT )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->maxCount () );
  }
}

/*
int maxVisibleItems () const
*/
HB_FUNC_STATIC( QCOMBOBOX_MAXVISIBLEITEMS )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->maxVisibleItems () );
  }
}

/*
int minimumContentsLength () const
*/
HB_FUNC_STATIC( QCOMBOBOX_MINIMUMCONTENTSLENGTH )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->minimumContentsLength () );
  }
}

/*
QAbstractItemModel * model () const
*/
HB_FUNC_STATIC( QCOMBOBOX_MODEL )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractItemModel * ptr = obj->model ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMMODEL" );
  }
}

/*
int modelColumn () const
*/
HB_FUNC_STATIC( QCOMBOBOX_MODELCOLUMN )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->modelColumn () );
  }
}

/*
void removeItem ( int index )
*/
HB_FUNC_STATIC( QCOMBOBOX_REMOVEITEM )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->removeItem ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QModelIndex rootModelIndex () const
*/
HB_FUNC_STATIC( QCOMBOBOX_ROOTMODELINDEX )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->rootModelIndex () );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
void setCompleter ( QCompleter * completer )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETCOMPLETER )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQCOMPLETER(1) )
    {
      obj->setCompleter ( PQCOMPLETER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDuplicatesEnabled ( bool enable )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETDUPLICATESENABLED )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setDuplicatesEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEditable ( bool editable )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETEDITABLE )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setEditable ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFrame ( bool )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETFRAME )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setFrame ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIconSize ( const QSize & size )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETICONSIZE )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSIZE(1) )
    {
      obj->setIconSize ( *PQSIZE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setInsertPolicy ( InsertPolicy policy )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETINSERTPOLICY )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setInsertPolicy ( (QComboBox::InsertPolicy) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemData ( int index, const QVariant & value, int role = Qt::UserRole )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETITEMDATA )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQVARIANT(2) && ISOPTNUM(3) )
    {
      obj->setItemData ( PINT(1), *PQVARIANT(2), OPINT(3,Qt::UserRole) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemDelegate ( QAbstractItemDelegate * delegate )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETITEMDELEGATE )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTITEMDELEGATE(1) )
    {
      obj->setItemDelegate ( PQABSTRACTITEMDELEGATE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemIcon ( int index, const QIcon & icon )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETITEMICON )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISQICON(2)||ISCHAR(2)||ISNIL(2)) )
    {
      QIcon par2 = ISOBJECT(2)? *(QIcon *) _qt5xhb_itemGetPtr(2) : QIcon(hb_parc(2));
      obj->setItemIcon ( PINT(1), par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemText ( int index, const QString & text )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETITEMTEXT )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISCHAR(2) )
    {
      obj->setItemText ( PINT(1), PQSTRING(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLineEdit ( QLineEdit * edit )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETLINEEDIT )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQLINEEDIT(1) )
    {
      obj->setLineEdit ( PQLINEEDIT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMaxCount ( int max )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETMAXCOUNT )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setMaxCount ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMaxVisibleItems ( int maxItems )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETMAXVISIBLEITEMS )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setMaxVisibleItems ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMinimumContentsLength ( int characters )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETMINIMUMCONTENTSLENGTH )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setMinimumContentsLength ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETMODEL )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTITEMMODEL(1) )
    {
      obj->setModel ( PQABSTRACTITEMMODEL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setModelColumn ( int visibleColumn )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETMODELCOLUMN )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setModelColumn ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRootModelIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETROOTMODELINDEX )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) )
    {
      obj->setRootModelIndex ( *PQMODELINDEX(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizeAdjustPolicy ( SizeAdjustPolicy policy )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETSIZEADJUSTPOLICY )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setSizeAdjustPolicy ( (QComboBox::SizeAdjustPolicy) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setValidator ( const QValidator * validator )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETVALIDATOR )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQVALIDATOR(1) )
    {
      const QValidator * par1 = (const QValidator *) _qt5xhb_itemGetPtr(1);
      obj->setValidator ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setView ( QAbstractItemView * itemView )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETVIEW )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTITEMVIEW(1) )
    {
      obj->setView ( PQABSTRACTITEMVIEW(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void showPopup ()
*/
HB_FUNC_STATIC( QCOMBOBOX_SHOWPOPUP )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->showPopup ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
SizeAdjustPolicy sizeAdjustPolicy () const
*/
HB_FUNC_STATIC( QCOMBOBOX_SIZEADJUSTPOLICY )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->sizeAdjustPolicy () );
  }
}

/*
const QValidator * validator () const
*/
HB_FUNC_STATIC( QCOMBOBOX_VALIDATOR )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QValidator * ptr = obj->validator ();
    _qt5xhb_createReturnClass ( ptr, "QVALIDATOR" );
  }
}

/*
QAbstractItemView * view () const
*/
HB_FUNC_STATIC( QCOMBOBOX_VIEW )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractItemView * ptr = obj->view ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMVIEW" );
  }
}

/*
virtual bool event ( QEvent * event )
*/
HB_FUNC_STATIC( QCOMBOBOX_EVENT )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQEVENT(1) )
    {
      RBOOL( obj->event ( PQEVENT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QCOMBOBOX_MINIMUMSIZEHINT )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QCOMBOBOX_SIZEHINT )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void clear ()
*/
HB_FUNC_STATIC( QCOMBOBOX_CLEAR )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clearEditText ()
*/
HB_FUNC_STATIC( QCOMBOBOX_CLEAREDITTEXT )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clearEditText ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentIndex ( int index )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETCURRENTINDEX )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCurrentIndex ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEditText ( const QString & text )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETEDITTEXT )
{
  QComboBox * obj = (QComboBox *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setEditText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
