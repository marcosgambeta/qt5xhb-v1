/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QABSTRACTBUTTON
#endif

CLASS QButtonGroup INHERIT QObject

   DATA class_id INIT Class_Id_QButtonGroup
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addButton1
   METHOD addButton2
   METHOD addButton
   METHOD button
   METHOD buttons
   METHOD checkedButton
   METHOD checkedId
   METHOD exclusive
   METHOD id
   METHOD removeButton
   METHOD setExclusive
   METHOD setId
   METHOD onButtonClicked1
   METHOD onButtonClicked2
   METHOD onButtonPressed1
   METHOD onButtonPressed2
   METHOD onButtonReleased1
   METHOD onButtonReleased2
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QButtonGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QButtonGroup>
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
#include <QButtonGroup>
#endif
#endif

/*
QButtonGroup ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QBUTTONGROUP_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QButtonGroup * o = new QButtonGroup ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QButtonGroup *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QBUTTONGROUP_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QButtonGroup * obj = (QButtonGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addButton ( QAbstractButton * button )
*/
HB_FUNC_STATIC( QBUTTONGROUP_ADDBUTTON1 )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) _qt5xhb_itemGetPtr(1);
    obj->addButton ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addButton ( QAbstractButton * button, int id )
*/
HB_FUNC_STATIC( QBUTTONGROUP_ADDBUTTON2 )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) _qt5xhb_itemGetPtr(1);
    obj->addButton ( par1, (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addButton ( QAbstractButton * button )
//[2]void addButton ( QAbstractButton * button, int id )

HB_FUNC_STATIC( QBUTTONGROUP_ADDBUTTON )
{
  if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
  {
    HB_FUNC_EXEC( QBUTTONGROUP_ADDBUTTON1 );
  }
  else if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBUTTONGROUP_ADDBUTTON2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAbstractButton * button ( int id ) const
*/
HB_FUNC_STATIC( QBUTTONGROUP_BUTTON )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractButton * ptr = obj->button ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTBUTTON" );
  }
}


/*
QList<QAbstractButton *> buttons () const
*/
HB_FUNC_STATIC( QBUTTONGROUP_BUTTONS )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QAbstractButton *> list = obj->buttons (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QABSTRACTBUTTON" );
    #else
    pDynSym = hb_dynsymFindName( "QABSTRACTBUTTON" );
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
        hb_itemPutPtr( pItem, (QAbstractButton *) list[i] );
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
QAbstractButton * checkedButton () const
*/
HB_FUNC_STATIC( QBUTTONGROUP_CHECKEDBUTTON )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractButton * ptr = obj->checkedButton (  );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTBUTTON" );
  }
}


/*
int checkedId () const
*/
HB_FUNC_STATIC( QBUTTONGROUP_CHECKEDID )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->checkedId (  ) );
  }
}


/*
bool exclusive () const
*/
HB_FUNC_STATIC( QBUTTONGROUP_EXCLUSIVE )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->exclusive (  ) );
  }
}


/*
int id ( QAbstractButton * button ) const
*/
HB_FUNC_STATIC( QBUTTONGROUP_ID )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->id ( par1 ) );
  }
}


/*
void removeButton ( QAbstractButton * button )
*/
HB_FUNC_STATIC( QBUTTONGROUP_REMOVEBUTTON )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) _qt5xhb_itemGetPtr(1);
    obj->removeButton ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setExclusive ( bool )
*/
HB_FUNC_STATIC( QBUTTONGROUP_SETEXCLUSIVE )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setExclusive ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setId ( QAbstractButton * button, int id )
*/
HB_FUNC_STATIC( QBUTTONGROUP_SETID )
{
  QButtonGroup * obj = (QButtonGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractButton * par1 = (QAbstractButton *) _qt5xhb_itemGetPtr(1);
    obj->setId ( par1, (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
