/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QSound INHERIT QObject

   DATA class_id INIT Class_Id_QSound
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD loops
   METHOD loopsRemaining
   METHOD setLoops
   METHOD fileName
   METHOD isFinished
   METHOD stop
   METHOD play1
   METHOD play2
   METHOD play
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSound
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSound>
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
#include <QSound>
#endif
#endif

/*
QSound(const QString& filename, QObject* parent = 0)
*/
HB_FUNC_STATIC( QSOUND_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QSound * o = new QSound ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSound *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSOUND_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSound * obj = (QSound *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int loops() const
*/
HB_FUNC_STATIC( QSOUND_LOOPS )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->loops (  ) );
  }
}


/*
int loopsRemaining() const
*/
HB_FUNC_STATIC( QSOUND_LOOPSREMAINING )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->loopsRemaining (  ) );
  }
}


/*
void setLoops(int)
*/
HB_FUNC_STATIC( QSOUND_SETLOOPS )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLoops ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString fileName() const
*/
HB_FUNC_STATIC( QSOUND_FILENAME )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->fileName (  ).toLatin1().data() );
  }
}


/*
bool isFinished() const
*/
HB_FUNC_STATIC( QSOUND_ISFINISHED )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFinished (  ) );
  }
}


/*
void stop()
*/
HB_FUNC_STATIC( QSOUND_STOP )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void play()
*/
HB_FUNC_STATIC( QSOUND_PLAY1 )
{
  QSound * obj = (QSound *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->play (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void play(const QString& filename)
*/
HB_FUNC_STATIC( QSOUND_PLAY2 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QSound::play ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void play()
//[2]static void play(const QString& filename)

HB_FUNC_STATIC( QSOUND_PLAY )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSOUND_PLAY1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSOUND_PLAY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


#pragma ENDDUMP
