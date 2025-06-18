//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "HUiLoader.hpp"

HUiLoader::HUiLoader(QObject *parent) : QUiLoader(parent)
{
  m_createActionBlock = NULL;
  m_createActionGroupBlock = NULL;
  m_createLayoutBlock = NULL;
  m_createWidgetBlock = NULL;
}

HUiLoader::~HUiLoader()
{
  if (m_createActionBlock != NULL)
  {
    hb_itemRelease(m_createActionBlock);
    m_createActionBlock = NULL;
  }

  if (m_createActionGroupBlock != NULL)
  {
    hb_itemRelease(m_createActionGroupBlock);
    m_createActionGroupBlock = NULL;
  }

  if (m_createLayoutBlock != NULL)
  {
    hb_itemRelease(m_createLayoutBlock);
    m_createLayoutBlock = NULL;
  }

  if (m_createWidgetBlock != NULL)
  {
    hb_itemRelease(m_createWidgetBlock);
    m_createWidgetBlock = NULL;
  }
}

QAction *HUiLoader::createAction(QObject *parent, const QString &name)
{
  QAction *action = QUiLoader::createAction(parent, name);

  if (m_createActionBlock != NULL)
  {
    PHB_ITEM pAction = Qt5xHb::returnQObjectObject(action);
    hb_vmEvalBlockV(m_createActionBlock, 1, pAction);
    hb_itemRelease(pAction);
  }

  return action;
}

QActionGroup *HUiLoader::createActionGroup(QObject *parent, const QString &name)
{
  QActionGroup *actionGroup = QUiLoader::createActionGroup(parent, name);

  if (m_createActionGroupBlock != NULL)
  {
    PHB_ITEM pActionGroup = Qt5xHb::returnQObjectObject(actionGroup);
    hb_vmEvalBlockV(m_createActionGroupBlock, 1, pActionGroup);
    hb_itemRelease(pActionGroup);
  }

  return actionGroup;
}

QLayout *HUiLoader::createLayout(const QString &className, QObject *parent, const QString &name)
{
  QLayout *layout = QUiLoader::createLayout(className, parent, name);

  if (m_createLayoutBlock != NULL)
  {
    PHB_ITEM pLayout = Qt5xHb::returnQObjectObject(layout);
    hb_vmEvalBlockV(m_createLayoutBlock, 1, pLayout);
    hb_itemRelease(pLayout);
  }

  return layout;
}

QWidget *HUiLoader::createWidget(const QString &className, QWidget *parent, const QString &name)
{
  QWidget *widget = QUiLoader::createWidget(className, parent, name);

  if (m_createWidgetBlock != NULL)
  {
    PHB_ITEM pWidget = Qt5xHb::returnQWidgetObject(widget);
    hb_vmEvalBlockV(m_createWidgetBlock, 1, pWidget);
    hb_itemRelease(pWidget);
  }

  return widget;
}

void HUiLoader::setCreateActionCB(PHB_ITEM block)
{
  if (m_createActionBlock != NULL)
  {
    hb_itemRelease(m_createActionBlock);
  }
  if (block != NULL)
  {
    m_createActionBlock = hb_itemNew(block);
  }
}

void HUiLoader::setCreateActionGroupCB(PHB_ITEM block)
{
  if (m_createActionGroupBlock != NULL)
  {
    hb_itemRelease(m_createActionGroupBlock);
  }
  if (block != NULL)
  {
    m_createActionGroupBlock = hb_itemNew(block);
  }
}

void HUiLoader::setCreateLayoutCB(PHB_ITEM block)
{
  if (m_createLayoutBlock != NULL)
  {
    hb_itemRelease(m_createLayoutBlock);
  }
  if (block != NULL)
  {
    m_createLayoutBlock = hb_itemNew(block);
  }
}

void HUiLoader::setCreateWidgetCB(PHB_ITEM block)
{
  if (m_createWidgetBlock != NULL)
  {
    hb_itemRelease(m_createWidgetBlock);
  }
  if (block != NULL)
  {
    m_createWidgetBlock = hb_itemNew(block);
  }
}
