/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QKEYSEQUENCE
#endif

CLASS QKeySequenceEdit INHERIT QWidget

   DATA class_id INIT Class_Id_QKeySequenceEdit
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD keySequence
   METHOD setKeySequence
   METHOD clear
   METHOD onEditingFinished
   METHOD onKeySequenceChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QKeySequenceEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QKeySequenceEdit>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QKeySequenceEdit>
#endif
#endif

/*
QKeySequenceEdit(QWidget *parent = 0)
*/
HB_FUNC_STATIC( QKEYSEQUENCEEDIT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QKeySequenceEdit * o = new QKeySequenceEdit ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QKeySequenceEdit(const QKeySequence &keySequence, QWidget *parent = 0)
*/
HB_FUNC_STATIC( QKEYSEQUENCEEDIT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequence * par1 = (QKeySequence *) _qt5xhb_itemGetPtr(1);
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
  QKeySequenceEdit * o = new QKeySequenceEdit ( *par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


//[1]QKeySequenceEdit(QWidget *parent = 0)
//[2]QKeySequenceEdit(const QKeySequence &keySequence, QWidget *parent = 0)

HB_FUNC_STATIC( QKEYSEQUENCEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QKEYSEQUENCEEDIT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQKEYSEQUENCE(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QKEYSEQUENCEEDIT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QKEYSEQUENCEEDIT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * obj = (QKeySequenceEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QKeySequence keySequence() const
*/
HB_FUNC_STATIC( QKEYSEQUENCEEDIT_KEYSEQUENCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * obj = (QKeySequenceEdit *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QKeySequence * ptr = new QKeySequence( obj->keySequence (  ) );
    _qt5xhb_createReturnClass ( ptr, "QKEYSEQUENCE", true );
  }
#endif
}


/*
void setKeySequence(const QKeySequence &keySequence)
*/
HB_FUNC_STATIC( QKEYSEQUENCEEDIT_SETKEYSEQUENCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * obj = (QKeySequenceEdit *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QKeySequence * par1 = (QKeySequence *) _qt5xhb_itemGetPtr(1);
    obj->setKeySequence ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void clear()
*/
HB_FUNC_STATIC( QKEYSEQUENCEEDIT_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * obj = (QKeySequenceEdit *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
