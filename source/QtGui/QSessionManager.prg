/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

CLASS QSessionManager INHERIT QObject

   DATA class_id INIT Class_Id_QSessionManager
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD sessionId
   METHOD sessionKey
   METHOD allowsInteraction
   METHOD allowsErrorInteraction
   METHOD release
   METHOD cancel
   METHOD setRestartHint
   METHOD restartHint
   METHOD setRestartCommand
   METHOD restartCommand
   METHOD setDiscardCommand
   METHOD discardCommand
   METHOD setManagerProperty1
   METHOD setManagerProperty2
   METHOD isPhase2
   METHOD requestPhase2

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSessionManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSessionManager>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSessionManager>
#endif



/*
QString sessionId() const
*/
HB_FUNC_STATIC( QSESSIONMANAGER_SESSIONID )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->sessionId (  ).toLatin1().data() );
  }
}


/*
QString sessionKey() const
*/
HB_FUNC_STATIC( QSESSIONMANAGER_SESSIONKEY )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->sessionKey (  ).toLatin1().data() );
  }
}


/*
bool allowsInteraction()
*/
HB_FUNC_STATIC( QSESSIONMANAGER_ALLOWSINTERACTION )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->allowsInteraction (  ) );
  }
}


/*
bool allowsErrorInteraction()
*/
HB_FUNC_STATIC( QSESSIONMANAGER_ALLOWSERRORINTERACTION )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->allowsErrorInteraction (  ) );
  }
}


/*
void release()
*/
HB_FUNC_STATIC( QSESSIONMANAGER_RELEASE )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->release (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void cancel()
*/
HB_FUNC_STATIC( QSESSIONMANAGER_CANCEL )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->cancel (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRestartHint(RestartHint)
*/
HB_FUNC_STATIC( QSESSIONMANAGER_SETRESTARTHINT )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setRestartHint (  (QSessionManager::RestartHint) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
RestartHint restartHint() const
*/
HB_FUNC_STATIC( QSESSIONMANAGER_RESTARTHINT )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->restartHint (  ) );
  }
}


/*
void setRestartCommand(const QStringList&)
*/
HB_FUNC_STATIC( QSESSIONMANAGER_SETRESTARTCOMMAND )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
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
    obj->setRestartCommand ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList restartCommand() const
*/
HB_FUNC_STATIC( QSESSIONMANAGER_RESTARTCOMMAND )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->restartCommand (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
void setDiscardCommand(const QStringList&)
*/
HB_FUNC_STATIC( QSESSIONMANAGER_SETDISCARDCOMMAND )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
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
    obj->setDiscardCommand ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList discardCommand() const
*/
HB_FUNC_STATIC( QSESSIONMANAGER_DISCARDCOMMAND )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->discardCommand (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
void setManagerProperty(const QString& name, const QString& value)
*/
HB_FUNC_STATIC( QSESSIONMANAGER_SETMANAGERPROPERTY1 )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QString par2 = QLatin1String( hb_parc(2) );
    obj->setManagerProperty ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setManagerProperty(const QString& name, const QStringList& value)
*/
HB_FUNC_STATIC( QSESSIONMANAGER_SETMANAGERPROPERTY2 )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QStringList par2 = _qt5xhb_convert_array_parameter_to_qstringlist(2);
    //PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
    //int i2;
    //int nLen2 = hb_arrayLen(aStrings2);
    //for (i2=0;i2<nLen2;i2++)
    //{
    //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings2, i2+1) );
    //  par2 << temp;
    //}
    obj->setManagerProperty ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isPhase2() const
*/
HB_FUNC_STATIC( QSESSIONMANAGER_ISPHASE2 )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isPhase2 (  ) );
  }
}


/*
void requestPhase2()
*/
HB_FUNC_STATIC( QSESSIONMANAGER_REQUESTPHASE2 )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->requestPhase2 (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
