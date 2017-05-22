/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTITEMMODEL
REQUEST QMODELINDEX
REQUEST QABSTRACTITEMVIEW
REQUEST QWIDGET
#endif

CLASS QCompleter INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD caseSensitivity
   METHOD completionColumn
   METHOD completionCount
   METHOD completionMode
   METHOD completionModel
   METHOD completionPrefix
   METHOD completionRole
   METHOD currentCompletion
   METHOD currentIndex
   METHOD currentRow
   METHOD maxVisibleItems
   METHOD model
   METHOD modelSorting
   METHOD pathFromIndex
   METHOD popup
   METHOD setCaseSensitivity
   METHOD setCompletionColumn
   METHOD setCompletionMode
   METHOD setCompletionRole
   METHOD setCurrentRow
   METHOD setMaxVisibleItems
   METHOD setModel
   METHOD setModelSorting
   METHOD setPopup
   METHOD setWidget
   METHOD splitPath
   METHOD widget
   METHOD wrapAround
   METHOD complete
   METHOD setCompletionPrefix
   METHOD setWrapAround

   METHOD onActivated1
   METHOD onActivated2
   METHOD onHighlighted1
   METHOD onHighlighted2

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCompleter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCompleter>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCompleter>
#endif

#include <QStringList>

/*
QCompleter ( QObject * parent = 0 )
*/
void QCompleter_new1 ()
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QCompleter * o = new QCompleter ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QCompleter ( QAbstractItemModel * model, QObject * parent = 0 )
*/
void QCompleter_new2 ()
{
  QAbstractItemModel * par1 = (QAbstractItemModel *) _qt5xhb_itemGetPtr(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QCompleter * o = new QCompleter ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QCompleter ( const QStringList & list, QObject * parent = 0 )
*/
void QCompleter_new3 ()
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
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QCompleter * o = new QCompleter ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QCompleter ( QObject * parent = 0 )
//[2]QCompleter ( QAbstractItemModel * model, QObject * parent = 0 )
//[3]QCompleter ( const QStringList & list, QObject * parent = 0 )

HB_FUNC_STATIC( QCOMPLETER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QCompleter_new1();
  }
  else if( ISBETWEEN(1,2) && ISQABSTRACTITEMMODEL(1) && ISOPTQOBJECT(2) )
  {
    QCompleter_new2();
  }
  else if( ISBETWEEN(1,2) && ISARRAY(1) && ISOPTQOBJECT(2) )
  {
    QCompleter_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCOMPLETER_DELETE )
{
  QCompleter * obj = (QCompleter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
Qt::CaseSensitivity caseSensitivity () const
*/
HB_FUNC_STATIC( QCOMPLETER_CASESENSITIVITY )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->caseSensitivity () );
  }
}

/*
int completionColumn () const
*/
HB_FUNC_STATIC( QCOMPLETER_COMPLETIONCOLUMN )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->completionColumn () );
  }
}

/*
int completionCount () const
*/
HB_FUNC_STATIC( QCOMPLETER_COMPLETIONCOUNT )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->completionCount () );
  }
}

/*
CompletionMode completionMode () const
*/
HB_FUNC_STATIC( QCOMPLETER_COMPLETIONMODE )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->completionMode () );
  }
}

/*
QAbstractItemModel * completionModel () const
*/
HB_FUNC_STATIC( QCOMPLETER_COMPLETIONMODEL )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractItemModel * ptr = obj->completionModel ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMMODEL" );
  }
}

/*
QString completionPrefix () const
*/
HB_FUNC_STATIC( QCOMPLETER_COMPLETIONPREFIX )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->completionPrefix () ) );
  }
}

/*
int completionRole () const
*/
HB_FUNC_STATIC( QCOMPLETER_COMPLETIONROLE )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->completionRole () );
  }
}

/*
QString currentCompletion () const
*/
HB_FUNC_STATIC( QCOMPLETER_CURRENTCOMPLETION )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->currentCompletion () ) );
  }
}

/*
QModelIndex currentIndex () const
*/
HB_FUNC_STATIC( QCOMPLETER_CURRENTINDEX )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->currentIndex () );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
int currentRow () const
*/
HB_FUNC_STATIC( QCOMPLETER_CURRENTROW )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->currentRow () );
  }
}

/*
int maxVisibleItems () const
*/
HB_FUNC_STATIC( QCOMPLETER_MAXVISIBLEITEMS )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->maxVisibleItems () );
  }
}

/*
QAbstractItemModel * model () const
*/
HB_FUNC_STATIC( QCOMPLETER_MODEL )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractItemModel * ptr = obj->model ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMMODEL" );
  }
}

/*
ModelSorting modelSorting () const
*/
HB_FUNC_STATIC( QCOMPLETER_MODELSORTING )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->modelSorting () );
  }
}

/*
virtual QString pathFromIndex ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QCOMPLETER_PATHFROMINDEX )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) )
    {
      QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
      hb_retc( RQSTRING( obj->pathFromIndex ( *par1 ) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAbstractItemView * popup () const
*/
HB_FUNC_STATIC( QCOMPLETER_POPUP )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractItemView * ptr = obj->popup ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTITEMVIEW" );
  }
}

/*
void setCaseSensitivity ( Qt::CaseSensitivity caseSensitivity )
*/
HB_FUNC_STATIC( QCOMPLETER_SETCASESENSITIVITY )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setCaseSensitivity (  (Qt::CaseSensitivity) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCompletionColumn ( int column )
*/
HB_FUNC_STATIC( QCOMPLETER_SETCOMPLETIONCOLUMN )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCompletionColumn ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCompletionMode ( CompletionMode mode )
*/
HB_FUNC_STATIC( QCOMPLETER_SETCOMPLETIONMODE )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setCompletionMode (  (QCompleter::CompletionMode) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCompletionRole ( int role )
*/
HB_FUNC_STATIC( QCOMPLETER_SETCOMPLETIONROLE )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCompletionRole ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool setCurrentRow ( int row )
*/
HB_FUNC_STATIC( QCOMPLETER_SETCURRENTROW )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retl( obj->setCurrentRow ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setMaxVisibleItems ( int maxItems )
*/
HB_FUNC_STATIC( QCOMPLETER_SETMAXVISIBLEITEMS )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

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
void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QCOMPLETER_SETMODEL )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTITEMMODEL(1) )
    {
      QAbstractItemModel * par1 = (QAbstractItemModel *) _qt5xhb_itemGetPtr(1);
      obj->setModel ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setModelSorting ( ModelSorting sorting )
*/
HB_FUNC_STATIC( QCOMPLETER_SETMODELSORTING )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setModelSorting (  (QCompleter::ModelSorting) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPopup ( QAbstractItemView * popup )
*/
HB_FUNC_STATIC( QCOMPLETER_SETPOPUP )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQABSTRACTITEMVIEW(1) )
    {
      QAbstractItemView * par1 = (QAbstractItemView *) _qt5xhb_itemGetPtr(1);
      obj->setPopup ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QCOMPLETER_SETWIDGET )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) )
    {
      QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
      obj->setWidget ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QStringList splitPath ( const QString & path ) const
*/
HB_FUNC_STATIC( QCOMPLETER_SPLITPATH )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QStringList strl = obj->splitPath ( PQSTRING(1) );
      _qt5xhb_convert_qstringlist_to_array ( strl );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QWidget * widget () const
*/
HB_FUNC_STATIC( QCOMPLETER_WIDGET )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->widget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
bool wrapAround () const
*/
HB_FUNC_STATIC( QCOMPLETER_WRAPAROUND )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->wrapAround () );
  }
}

/*
void complete ( const QRect & rect = QRect() )
*/
HB_FUNC_STATIC( QCOMPLETER_COMPLETE )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQRECT(1)||ISNIL(1)) )
    {
      QRect par1 = ISNIL(1)? QRect() : *(QRect *) _qt5xhb_itemGetPtr(1);
      obj->complete ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCompletionPrefix ( const QString & prefix )
*/
HB_FUNC_STATIC( QCOMPLETER_SETCOMPLETIONPREFIX )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setCompletionPrefix ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWrapAround ( bool wrap )
*/
HB_FUNC_STATIC( QCOMPLETER_SETWRAPAROUND )
{
  QCompleter * obj = (QCompleter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setWrapAround ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
