/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QAudioFormat

   DATA pointer
   DATA class_id INIT Class_Id_QAudioFormat
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD byteOrder
   METHOD channelCount
   METHOD codec
   METHOD isValid
   METHOD sampleRate
   METHOD sampleSize
   METHOD sampleType
   METHOD setByteOrder
   METHOD setChannelCount
   METHOD setCodec
   METHOD setSampleRate
   METHOD setSampleSize
   METHOD setSampleType
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAudioFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAudioFormat>
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
#include <QAudioFormat>
#endif

/*
QAudioFormat ()
*/
HB_FUNC_STATIC( QAUDIOFORMAT_NEW1 )
{
  QAudioFormat * o = new QAudioFormat (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAudioFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QAudioFormat ( const QAudioFormat & other )
*/
HB_FUNC_STATIC( QAUDIOFORMAT_NEW2 )
{
  QAudioFormat * par1 = (QAudioFormat *) _qt5xhb_itemGetPtr(1);
  QAudioFormat * o = new QAudioFormat ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAudioFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QAudioFormat ()
//[2]QAudioFormat ( const QAudioFormat & other )

HB_FUNC_STATIC( QAUDIOFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUDIOFORMAT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQAUDIOFORMAT(1) )
  {
    HB_FUNC_EXEC( QAUDIOFORMAT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QAUDIOFORMAT_DELETE )
{
  QAudioFormat * obj = (QAudioFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QAudioFormat::Endian byteOrder () const
*/
HB_FUNC_STATIC( QAUDIOFORMAT_BYTEORDER )
{
  QAudioFormat * obj = (QAudioFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->byteOrder (  ) );
  }
}


/*
int channelCount () const
*/
HB_FUNC_STATIC( QAUDIOFORMAT_CHANNELCOUNT )
{
  QAudioFormat * obj = (QAudioFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->channelCount (  ) );
  }
}


/*
QString codec () const
*/
HB_FUNC_STATIC( QAUDIOFORMAT_CODEC )
{
  QAudioFormat * obj = (QAudioFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->codec (  ).toLatin1().data() );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QAUDIOFORMAT_ISVALID )
{
  QAudioFormat * obj = (QAudioFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
int sampleRate () const
*/
HB_FUNC_STATIC( QAUDIOFORMAT_SAMPLERATE )
{
  QAudioFormat * obj = (QAudioFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sampleRate (  ) );
  }
}


/*
int sampleSize () const
*/
HB_FUNC_STATIC( QAUDIOFORMAT_SAMPLESIZE )
{
  QAudioFormat * obj = (QAudioFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sampleSize (  ) );
  }
}


/*
QAudioFormat::SampleType sampleType () const
*/
HB_FUNC_STATIC( QAUDIOFORMAT_SAMPLETYPE )
{
  QAudioFormat * obj = (QAudioFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sampleType (  ) );
  }
}


/*
void setByteOrder ( QAudioFormat::Endian byteOrder )
*/
HB_FUNC_STATIC( QAUDIOFORMAT_SETBYTEORDER )
{
  QAudioFormat * obj = (QAudioFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setByteOrder (  (QAudioFormat::Endian) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setChannelCount ( int channels )
*/
HB_FUNC_STATIC( QAUDIOFORMAT_SETCHANNELCOUNT )
{
  QAudioFormat * obj = (QAudioFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setChannelCount ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCodec ( const QString & codec )
*/
HB_FUNC_STATIC( QAUDIOFORMAT_SETCODEC )
{
  QAudioFormat * obj = (QAudioFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setCodec ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSampleRate ( int samplerate )
*/
HB_FUNC_STATIC( QAUDIOFORMAT_SETSAMPLERATE )
{
  QAudioFormat * obj = (QAudioFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSampleRate ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSampleSize ( int sampleSize )
*/
HB_FUNC_STATIC( QAUDIOFORMAT_SETSAMPLESIZE )
{
  QAudioFormat * obj = (QAudioFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSampleSize ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSampleType ( QAudioFormat::SampleType sampleType )
*/
HB_FUNC_STATIC( QAUDIOFORMAT_SETSAMPLETYPE )
{
  QAudioFormat * obj = (QAudioFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSampleType (  (QAudioFormat::SampleType) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QAUDIOFORMAT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QAUDIOFORMAT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QAUDIOFORMAT_NEWFROM );
}

HB_FUNC_STATIC( QAUDIOFORMAT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QAUDIOFORMAT_NEWFROM );
}

HB_FUNC_STATIC( QAUDIOFORMAT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QAUDIOFORMAT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
