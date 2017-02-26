/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QSIGNALTRANSITION
REQUEST QABSTRACTTRANSITION
REQUEST QABSTRACTSTATE
#endif

CLASS QState INHERIT QAbstractState

   DATA class_id INIT Class_Id_QState
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addTransition1
   METHOD addTransition2
   METHOD addTransition3
   METHOD addTransition
   METHOD assignProperty
   METHOD childMode
   METHOD errorState
   METHOD initialState
   METHOD removeTransition
   METHOD setChildMode
   METHOD setErrorState
   METHOD setInitialState
   METHOD transitions
   METHOD onFinished
   METHOD onPropertiesAssigned
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QState
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QState>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QState>
#endif
#endif

/*
QState ( QState * parent = 0 )
*/
HB_FUNC_STATIC( QSTATE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QState * par1 = ISNIL(1)? 0 : (QState *) _qtxhb_itemGetPtr(1);
  QState * o = new QState ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QState *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QState ( ChildMode childMode, QState * parent = 0 )
*/
HB_FUNC_STATIC( QSTATE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QState * par2 = ISNIL(2)? 0 : (QState *) _qtxhb_itemGetPtr(2);
  QState * o = new QState (  (QState::ChildMode) par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QState *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QState ( QState * parent = 0 )
//[2]QState ( ChildMode childMode, QState * parent = 0 )

HB_FUNC_STATIC( QSTATE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSTATE_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQSTATE(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSTATE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTATE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QState * obj = (QState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
void addTransition ( QAbstractTransition * transition )
*/
HB_FUNC_STATIC( QSTATE_ADDTRANSITION1 )
{
  QState * obj = (QState *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractTransition * par1 = (QAbstractTransition *) _qtxhb_itemGetPtr(1);
    obj->addTransition ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSignalTransition * addTransition ( QObject * sender, const char * signal, QAbstractState * target )
*/
HB_FUNC_STATIC( QSTATE_ADDTRANSITION2 )
{
  QState * obj = (QState *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    const char * par2 = hb_parc(2);
    QAbstractState * par3 = (QAbstractState *) _qtxhb_itemGetPtr(3);
    QSignalTransition * ptr = obj->addTransition ( par1,  (const char *) par2, par3 );
    _qt4xhb_createReturnClass ( ptr, "QSIGNALTRANSITION" );
  }
}


/*
QAbstractTransition * addTransition ( QAbstractState * target )
*/
HB_FUNC_STATIC( QSTATE_ADDTRANSITION3 )
{
  QState * obj = (QState *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractState * par1 = (QAbstractState *) _qtxhb_itemGetPtr(1);
    QAbstractTransition * ptr = obj->addTransition ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTTRANSITION" );
  }
}


//[1]void addTransition ( QAbstractTransition * transition )
//[2]QSignalTransition * addTransition ( QObject * sender, const char * signal, QAbstractState * target )
//[3]QAbstractTransition * addTransition ( QAbstractState * target )

HB_FUNC_STATIC( QSTATE_ADDTRANSITION )
{
  if( ISNUMPAR(1) && ISQABSTRACTTRANSITION(1) )
  {
    HB_FUNC_EXEC( QSTATE_ADDTRANSITION1 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQABSTRACTSTATE(3) )
  {
    HB_FUNC_EXEC( QSTATE_ADDTRANSITION2 );
  }
  else if( ISNUMPAR(1) && ISQABSTRACTSTATE(1) )
  {
    HB_FUNC_EXEC( QSTATE_ADDTRANSITION3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void assignProperty ( QObject * object, const char * name, const QVariant & value )
*/
HB_FUNC_STATIC( QSTATE_ASSIGNPROPERTY )
{
  QState * obj = (QState *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
    const char * par2 = hb_parc(2);
    QVariant * par3 = (QVariant *) _qtxhb_itemGetPtr(3);
    obj->assignProperty ( par1,  (const char *) par2, *par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
ChildMode childMode () const
*/
HB_FUNC_STATIC( QSTATE_CHILDMODE )
{
  QState * obj = (QState *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->childMode (  ) );
  }
}


/*
QAbstractState * errorState () const
*/
HB_FUNC_STATIC( QSTATE_ERRORSTATE )
{
  QState * obj = (QState *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractState * ptr = obj->errorState (  );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTSTATE" );
  }
}


/*
QAbstractState * initialState () const
*/
HB_FUNC_STATIC( QSTATE_INITIALSTATE )
{
  QState * obj = (QState *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractState * ptr = obj->initialState (  );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTSTATE" );
  }
}


/*
void removeTransition ( QAbstractTransition * transition )
*/
HB_FUNC_STATIC( QSTATE_REMOVETRANSITION )
{
  QState * obj = (QState *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractTransition * par1 = (QAbstractTransition *) _qtxhb_itemGetPtr(1);
    obj->removeTransition ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setChildMode ( ChildMode mode )
*/
HB_FUNC_STATIC( QSTATE_SETCHILDMODE )
{
  QState * obj = (QState *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setChildMode (  (QState::ChildMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setErrorState ( QAbstractState * state )
*/
HB_FUNC_STATIC( QSTATE_SETERRORSTATE )
{
  QState * obj = (QState *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractState * par1 = (QAbstractState *) _qtxhb_itemGetPtr(1);
    obj->setErrorState ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setInitialState ( QAbstractState * state )
*/
HB_FUNC_STATIC( QSTATE_SETINITIALSTATE )
{
  QState * obj = (QState *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractState * par1 = (QAbstractState *) _qtxhb_itemGetPtr(1);
    obj->setInitialState ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QAbstractTransition *> transitions () const
*/
HB_FUNC_STATIC( QSTATE_TRANSITIONS )
{
  QState * obj = (QState *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QAbstractTransition *> list = obj->transitions (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QABSTRACTTRANSITION" );
    #else
    pDynSym = hb_dynsymFindName( "QABSTRACTTRANSITION" );
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
        hb_itemPutPtr( pItem, (QAbstractTransition *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}




#pragma ENDDUMP
