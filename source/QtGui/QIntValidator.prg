/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QLOCALE

CLASS QIntValidator INHERIT QValidator

   DATA class_id INIT Class_Id_QIntValidator
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bottom
   METHOD fixup
   METHOD locale
   METHOD setBottom
   METHOD setLocale
   METHOD setRange
   METHOD setTop
   METHOD top
   METHOD validate
   METHOD onChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIntValidator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QIntValidator>
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QIntValidator>
#endif
#endif

/*
QIntValidator(QObject * parent = 0)
*/
HB_FUNC_STATIC( QINTVALIDATOR_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QIntValidator * o = new QIntValidator ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QIntValidator *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QIntValidator(int minimum, int maximum, QObject * parent = 0)
*/
HB_FUNC_STATIC( QINTVALIDATOR_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  QObject * par3 = ISNIL(3)? 0 : (QObject *) _qtxhb_itemGetPtr(3);
  QIntValidator * o = new QIntValidator ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QIntValidator *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QIntValidator(QObject * parent = 0)
//[2]QIntValidator(int minimum, int maximum, QObject * parent = 0)

HB_FUNC_STATIC( QINTVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QINTVALIDATOR_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QINTVALIDATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QINTVALIDATOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QIntValidator * obj = (QIntValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int bottom() const
*/
HB_FUNC_STATIC( QINTVALIDATOR_BOTTOM )
{
  QIntValidator * obj = (QIntValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bottom (  ) );
  }
}


/*
virtual void fixup(QString & input) const
*/
HB_FUNC_STATIC( QINTVALIDATOR_FIXUP )
{
  QIntValidator * obj = (QIntValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->fixup ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QLocale locale() const
*/
HB_FUNC_STATIC( QINTVALIDATOR_LOCALE )
{
  QIntValidator * obj = (QIntValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLocale * ptr = new QLocale( obj->locale (  ) );
    _qt4xhb_createReturnClass ( ptr, "QLOCALE" );
  }
}


/*
void setBottom(int)
*/
HB_FUNC_STATIC( QINTVALIDATOR_SETBOTTOM )
{
  QIntValidator * obj = (QIntValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBottom ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLocale(const QLocale & locale)
*/
HB_FUNC_STATIC( QINTVALIDATOR_SETLOCALE )
{
  QIntValidator * obj = (QIntValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLocale * par1 = (QLocale *) _qtxhb_itemGetPtr(1);
    obj->setLocale ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setRange(int bottom, int top)
*/
HB_FUNC_STATIC( QINTVALIDATOR_SETRANGE )
{
  QIntValidator * obj = (QIntValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRange ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTop(int)
*/
HB_FUNC_STATIC( QINTVALIDATOR_SETTOP )
{
  QIntValidator * obj = (QIntValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTop ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int top() const
*/
HB_FUNC_STATIC( QINTVALIDATOR_TOP )
{
  QIntValidator * obj = (QIntValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->top (  ) );
  }
}


/*
virtual State validate(QString & input, int & pos) const = 0
*/
HB_FUNC_STATIC( QINTVALIDATOR_VALIDATE )
{
  QIntValidator * obj = (QIntValidator *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2;
    hb_retni( obj->validate ( par1, par2 ) );
  }
}





#pragma ENDDUMP
