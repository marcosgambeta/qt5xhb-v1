$header

#include "hbclass.ch"

CLASS QSessionManager INHERIT QObject

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

$destructor

#pragma BEGINDUMP

$includes

/*
QString sessionId() const
*/
HB_FUNC_STATIC( QSESSIONMANAGER_SESSIONID )
{
  QSessionManager * obj = (QSessionManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->sessionId () );
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
    RQSTRING( obj->sessionKey () );
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
    RBOOL( obj->allowsInteraction () );
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
    RBOOL( obj->allowsErrorInteraction () );
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
    obj->release ();
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
    obj->cancel ();
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
    obj->setRestartHint ( (QSessionManager::RestartHint) hb_parni(1) );
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
    hb_retni( obj->restartHint () );
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
    obj->setRestartCommand ( PQSTRINGLIST(1) );
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
    RQSTRINGLIST( obj->restartCommand () );
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
    obj->setDiscardCommand ( PQSTRINGLIST(1) );
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
    RQSTRINGLIST( obj->discardCommand () );
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
    obj->setManagerProperty ( PQSTRING(1), PQSTRING(2) );
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
    obj->setManagerProperty ( PQSTRING(1), PQSTRINGLIST(2) );
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
    RBOOL( obj->isPhase2 () );
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
    obj->requestPhase2 ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
