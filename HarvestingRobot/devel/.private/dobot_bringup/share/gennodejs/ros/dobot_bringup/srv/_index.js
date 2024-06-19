
"use strict";

let SpeedJ = require('./SpeedJ.js')
let User = require('./User.js')
let EmergencyStop = require('./EmergencyStop.js')
let SpeedL = require('./SpeedL.js')
let ServoJ = require('./ServoJ.js')
let DI = require('./DI.js')
let Jump = require('./Jump.js')
let SpeedFactor = require('./SpeedFactor.js')
let Circle = require('./Circle.js')
let SetCollideDrag = require('./SetCollideDrag.js')
let MovJ = require('./MovJ.js')
let LimZ = require('./LimZ.js')
let Arc = require('./Arc.js')
let RelMovJUser = require('./RelMovJUser.js')
let pause = require('./pause.js')
let SetHoldRegs = require('./SetHoldRegs.js')
let TCPSpeed = require('./TCPSpeed.js')
let TcpDashboard = require('./TcpDashboard.js')
let AccJ = require('./AccJ.js')
let Arch = require('./Arch.js')
let SetCoils = require('./SetCoils.js')
let ModbusClose = require('./ModbusClose.js')
let MovLIO = require('./MovLIO.js')
let StartPath = require('./StartPath.js')
let Continues = require('./Continues.js')
let PayLoad = require('./PayLoad.js')
let JointMovJ = require('./JointMovJ.js')
let StartTrace = require('./StartTrace.js')
let PowerOn = require('./PowerOn.js')
let SetTerminal485 = require('./SetTerminal485.js')
let ModbusCreate = require('./ModbusCreate.js')
let RelMovJTool = require('./RelMovJTool.js')
let SetArmOrientation = require('./SetArmOrientation.js')
let GetCoils = require('./GetCoils.js')
let GetPose = require('./GetPose.js')
let DOExecute = require('./DOExecute.js')
let RobotMode = require('./RobotMode.js')
let AI = require('./AI.js')
let MoveJog = require('./MoveJog.js')
let ClearError = require('./ClearError.js')
let SetPayload = require('./SetPayload.js')
let Sync = require('./Sync.js')
let RunScript = require('./RunScript.js')
let RelMovL = require('./RelMovL.js')
let TcpRealData = require('./TcpRealData.js')
let GetTraceStartPose = require('./GetTraceStartPose.js')
let StopScript = require('./StopScript.js')
let PauseScript = require('./PauseScript.js')
let TCPSpeedEnd = require('./TCPSpeedEnd.js')
let ToolDI = require('./ToolDI.js')
let GetPathStartPose = require('./GetPathStartPose.js')
let DIGroup = require('./DIGroup.js')
let AO = require('./AO.js')
let Tool = require('./Tool.js')
let StartDrag = require('./StartDrag.js')
let ContinueScript = require('./ContinueScript.js')
let RelMovLTool = require('./RelMovLTool.js')
let LoadSwitch = require('./LoadSwitch.js')
let SetObstacleAvoid = require('./SetObstacleAvoid.js')
let ToolAI = require('./ToolAI.js')
let MovJExt = require('./MovJExt.js')
let AccL = require('./AccL.js')
let SetSafeSkin = require('./SetSafeSkin.js')
let BrakeControl = require('./BrakeControl.js')
let RelJointMovJ = require('./RelJointMovJ.js')
let GetTerminal485 = require('./GetTerminal485.js')
let AOExecute = require('./AOExecute.js')
let GetAngle = require('./GetAngle.js')
let MovJIO = require('./MovJIO.js')
let HandleTrajPoints = require('./HandleTrajPoints.js')
let DO = require('./DO.js')
let GetHoldRegs = require('./GetHoldRegs.js')
let ResetRobot = require('./ResetRobot.js')
let StopDrag = require('./StopDrag.js')
let GetSixForceData = require('./GetSixForceData.js')
let PositiveSolution = require('./PositiveSolution.js')
let EnableRobot = require('./EnableRobot.js')
let ToolDOExecute = require('./ToolDOExecute.js')
let GetInBits = require('./GetInBits.js')
let RelMovJ = require('./RelMovJ.js')
let SetTerminalKeys = require('./SetTerminalKeys.js')
let DigitalOutputs = require('./DigitalOutputs.js')
let Wait = require('./Wait.js')
let RelMovLUser = require('./RelMovLUser.js')
let ServoP = require('./ServoP.js')
let StopmoveJog = require('./StopmoveJog.js')
let SyncAll = require('./SyncAll.js')
let GetErrorID = require('./GetErrorID.js')
let StartFCTrace = require('./StartFCTrace.js')
let ToolDO = require('./ToolDO.js')
let MovL = require('./MovL.js')
let SetCollisionLevel = require('./SetCollisionLevel.js')
let CP = require('./CP.js')
let DisableRobot = require('./DisableRobot.js')
let InverseSolution = require('./InverseSolution.js')
let GetInRegs = require('./GetInRegs.js')
let DOGroup = require('./DOGroup.js')

module.exports = {
  SpeedJ: SpeedJ,
  User: User,
  EmergencyStop: EmergencyStop,
  SpeedL: SpeedL,
  ServoJ: ServoJ,
  DI: DI,
  Jump: Jump,
  SpeedFactor: SpeedFactor,
  Circle: Circle,
  SetCollideDrag: SetCollideDrag,
  MovJ: MovJ,
  LimZ: LimZ,
  Arc: Arc,
  RelMovJUser: RelMovJUser,
  pause: pause,
  SetHoldRegs: SetHoldRegs,
  TCPSpeed: TCPSpeed,
  TcpDashboard: TcpDashboard,
  AccJ: AccJ,
  Arch: Arch,
  SetCoils: SetCoils,
  ModbusClose: ModbusClose,
  MovLIO: MovLIO,
  StartPath: StartPath,
  Continues: Continues,
  PayLoad: PayLoad,
  JointMovJ: JointMovJ,
  StartTrace: StartTrace,
  PowerOn: PowerOn,
  SetTerminal485: SetTerminal485,
  ModbusCreate: ModbusCreate,
  RelMovJTool: RelMovJTool,
  SetArmOrientation: SetArmOrientation,
  GetCoils: GetCoils,
  GetPose: GetPose,
  DOExecute: DOExecute,
  RobotMode: RobotMode,
  AI: AI,
  MoveJog: MoveJog,
  ClearError: ClearError,
  SetPayload: SetPayload,
  Sync: Sync,
  RunScript: RunScript,
  RelMovL: RelMovL,
  TcpRealData: TcpRealData,
  GetTraceStartPose: GetTraceStartPose,
  StopScript: StopScript,
  PauseScript: PauseScript,
  TCPSpeedEnd: TCPSpeedEnd,
  ToolDI: ToolDI,
  GetPathStartPose: GetPathStartPose,
  DIGroup: DIGroup,
  AO: AO,
  Tool: Tool,
  StartDrag: StartDrag,
  ContinueScript: ContinueScript,
  RelMovLTool: RelMovLTool,
  LoadSwitch: LoadSwitch,
  SetObstacleAvoid: SetObstacleAvoid,
  ToolAI: ToolAI,
  MovJExt: MovJExt,
  AccL: AccL,
  SetSafeSkin: SetSafeSkin,
  BrakeControl: BrakeControl,
  RelJointMovJ: RelJointMovJ,
  GetTerminal485: GetTerminal485,
  AOExecute: AOExecute,
  GetAngle: GetAngle,
  MovJIO: MovJIO,
  HandleTrajPoints: HandleTrajPoints,
  DO: DO,
  GetHoldRegs: GetHoldRegs,
  ResetRobot: ResetRobot,
  StopDrag: StopDrag,
  GetSixForceData: GetSixForceData,
  PositiveSolution: PositiveSolution,
  EnableRobot: EnableRobot,
  ToolDOExecute: ToolDOExecute,
  GetInBits: GetInBits,
  RelMovJ: RelMovJ,
  SetTerminalKeys: SetTerminalKeys,
  DigitalOutputs: DigitalOutputs,
  Wait: Wait,
  RelMovLUser: RelMovLUser,
  ServoP: ServoP,
  StopmoveJog: StopmoveJog,
  SyncAll: SyncAll,
  GetErrorID: GetErrorID,
  StartFCTrace: StartFCTrace,
  ToolDO: ToolDO,
  MovL: MovL,
  SetCollisionLevel: SetCollisionLevel,
  CP: CP,
  DisableRobot: DisableRobot,
  InverseSolution: InverseSolution,
  GetInRegs: GetInRegs,
  DOGroup: DOGroup,
};
