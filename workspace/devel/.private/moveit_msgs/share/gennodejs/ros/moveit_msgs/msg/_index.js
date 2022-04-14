
"use strict";

let MoveGroupActionResult = require('./MoveGroupActionResult.js');
let PlaceActionFeedback = require('./PlaceActionFeedback.js');
let PlaceResult = require('./PlaceResult.js');
let MoveGroupAction = require('./MoveGroupAction.js');
let MoveGroupSequenceActionGoal = require('./MoveGroupSequenceActionGoal.js');
let PickupFeedback = require('./PickupFeedback.js');
let ExecuteTrajectoryActionFeedback = require('./ExecuteTrajectoryActionFeedback.js');
let MoveGroupSequenceResult = require('./MoveGroupSequenceResult.js');
let PickupAction = require('./PickupAction.js');
let MoveGroupFeedback = require('./MoveGroupFeedback.js');
let ExecuteTrajectoryGoal = require('./ExecuteTrajectoryGoal.js');
let PickupActionResult = require('./PickupActionResult.js');
let PlaceFeedback = require('./PlaceFeedback.js');
let MoveGroupSequenceActionFeedback = require('./MoveGroupSequenceActionFeedback.js');
let ExecuteTrajectoryFeedback = require('./ExecuteTrajectoryFeedback.js');
let ExecuteTrajectoryResult = require('./ExecuteTrajectoryResult.js');
let PlaceActionGoal = require('./PlaceActionGoal.js');
let MoveGroupGoal = require('./MoveGroupGoal.js');
let MoveGroupActionFeedback = require('./MoveGroupActionFeedback.js');
let PickupGoal = require('./PickupGoal.js');
let MoveGroupSequenceAction = require('./MoveGroupSequenceAction.js');
let PlaceGoal = require('./PlaceGoal.js');
let ExecuteTrajectoryActionResult = require('./ExecuteTrajectoryActionResult.js');
let MoveGroupResult = require('./MoveGroupResult.js');
let MoveGroupSequenceFeedback = require('./MoveGroupSequenceFeedback.js');
let PickupResult = require('./PickupResult.js');
let PickupActionGoal = require('./PickupActionGoal.js');
let PickupActionFeedback = require('./PickupActionFeedback.js');
let MoveGroupActionGoal = require('./MoveGroupActionGoal.js');
let MoveGroupSequenceActionResult = require('./MoveGroupSequenceActionResult.js');
let ExecuteTrajectoryActionGoal = require('./ExecuteTrajectoryActionGoal.js');
let MoveGroupSequenceGoal = require('./MoveGroupSequenceGoal.js');
let PlaceAction = require('./PlaceAction.js');
let PlaceActionResult = require('./PlaceActionResult.js');
let ExecuteTrajectoryAction = require('./ExecuteTrajectoryAction.js');
let PlaceLocation = require('./PlaceLocation.js');
let OrientedBoundingBox = require('./OrientedBoundingBox.js');
let Grasp = require('./Grasp.js');
let KinematicSolverInfo = require('./KinematicSolverInfo.js');
let ObjectColor = require('./ObjectColor.js');
let CartesianPoint = require('./CartesianPoint.js');
let GripperTranslation = require('./GripperTranslation.js');
let AllowedCollisionEntry = require('./AllowedCollisionEntry.js');
let PlanningSceneComponents = require('./PlanningSceneComponents.js');
let OrientationConstraint = require('./OrientationConstraint.js');
let MotionPlanRequest = require('./MotionPlanRequest.js');
let AllowedCollisionMatrix = require('./AllowedCollisionMatrix.js');
let VisibilityConstraint = require('./VisibilityConstraint.js');
let JointConstraint = require('./JointConstraint.js');
let GenericTrajectory = require('./GenericTrajectory.js');
let PlanningScene = require('./PlanningScene.js');
let MotionPlanResponse = require('./MotionPlanResponse.js');
let MotionPlanDetailedResponse = require('./MotionPlanDetailedResponse.js');
let LinkPadding = require('./LinkPadding.js');
let PositionIKRequest = require('./PositionIKRequest.js');
let ContactInformation = require('./ContactInformation.js');
let PlanningSceneWorld = require('./PlanningSceneWorld.js');
let CostSource = require('./CostSource.js');
let JointLimits = require('./JointLimits.js');
let MotionSequenceRequest = require('./MotionSequenceRequest.js');
let PlannerParams = require('./PlannerParams.js');
let RobotState = require('./RobotState.js');
let AttachedCollisionObject = require('./AttachedCollisionObject.js');
let MotionSequenceItem = require('./MotionSequenceItem.js');
let PositionConstraint = require('./PositionConstraint.js');
let TrajectoryConstraints = require('./TrajectoryConstraints.js');
let ConstraintEvalResult = require('./ConstraintEvalResult.js');
let LinkScale = require('./LinkScale.js');
let CartesianTrajectoryPoint = require('./CartesianTrajectoryPoint.js');
let PlanningOptions = require('./PlanningOptions.js');
let RobotTrajectory = require('./RobotTrajectory.js');
let PlannerInterfaceDescription = require('./PlannerInterfaceDescription.js');
let CartesianTrajectory = require('./CartesianTrajectory.js');
let DisplayRobotState = require('./DisplayRobotState.js');
let MotionSequenceResponse = require('./MotionSequenceResponse.js');
let Constraints = require('./Constraints.js');
let WorkspaceParameters = require('./WorkspaceParameters.js');
let MoveItErrorCodes = require('./MoveItErrorCodes.js');
let CollisionObject = require('./CollisionObject.js');
let BoundingVolume = require('./BoundingVolume.js');
let DisplayTrajectory = require('./DisplayTrajectory.js');

module.exports = {
  MoveGroupActionResult: MoveGroupActionResult,
  PlaceActionFeedback: PlaceActionFeedback,
  PlaceResult: PlaceResult,
  MoveGroupAction: MoveGroupAction,
  MoveGroupSequenceActionGoal: MoveGroupSequenceActionGoal,
  PickupFeedback: PickupFeedback,
  ExecuteTrajectoryActionFeedback: ExecuteTrajectoryActionFeedback,
  MoveGroupSequenceResult: MoveGroupSequenceResult,
  PickupAction: PickupAction,
  MoveGroupFeedback: MoveGroupFeedback,
  ExecuteTrajectoryGoal: ExecuteTrajectoryGoal,
  PickupActionResult: PickupActionResult,
  PlaceFeedback: PlaceFeedback,
  MoveGroupSequenceActionFeedback: MoveGroupSequenceActionFeedback,
  ExecuteTrajectoryFeedback: ExecuteTrajectoryFeedback,
  ExecuteTrajectoryResult: ExecuteTrajectoryResult,
  PlaceActionGoal: PlaceActionGoal,
  MoveGroupGoal: MoveGroupGoal,
  MoveGroupActionFeedback: MoveGroupActionFeedback,
  PickupGoal: PickupGoal,
  MoveGroupSequenceAction: MoveGroupSequenceAction,
  PlaceGoal: PlaceGoal,
  ExecuteTrajectoryActionResult: ExecuteTrajectoryActionResult,
  MoveGroupResult: MoveGroupResult,
  MoveGroupSequenceFeedback: MoveGroupSequenceFeedback,
  PickupResult: PickupResult,
  PickupActionGoal: PickupActionGoal,
  PickupActionFeedback: PickupActionFeedback,
  MoveGroupActionGoal: MoveGroupActionGoal,
  MoveGroupSequenceActionResult: MoveGroupSequenceActionResult,
  ExecuteTrajectoryActionGoal: ExecuteTrajectoryActionGoal,
  MoveGroupSequenceGoal: MoveGroupSequenceGoal,
  PlaceAction: PlaceAction,
  PlaceActionResult: PlaceActionResult,
  ExecuteTrajectoryAction: ExecuteTrajectoryAction,
  PlaceLocation: PlaceLocation,
  OrientedBoundingBox: OrientedBoundingBox,
  Grasp: Grasp,
  KinematicSolverInfo: KinematicSolverInfo,
  ObjectColor: ObjectColor,
  CartesianPoint: CartesianPoint,
  GripperTranslation: GripperTranslation,
  AllowedCollisionEntry: AllowedCollisionEntry,
  PlanningSceneComponents: PlanningSceneComponents,
  OrientationConstraint: OrientationConstraint,
  MotionPlanRequest: MotionPlanRequest,
  AllowedCollisionMatrix: AllowedCollisionMatrix,
  VisibilityConstraint: VisibilityConstraint,
  JointConstraint: JointConstraint,
  GenericTrajectory: GenericTrajectory,
  PlanningScene: PlanningScene,
  MotionPlanResponse: MotionPlanResponse,
  MotionPlanDetailedResponse: MotionPlanDetailedResponse,
  LinkPadding: LinkPadding,
  PositionIKRequest: PositionIKRequest,
  ContactInformation: ContactInformation,
  PlanningSceneWorld: PlanningSceneWorld,
  CostSource: CostSource,
  JointLimits: JointLimits,
  MotionSequenceRequest: MotionSequenceRequest,
  PlannerParams: PlannerParams,
  RobotState: RobotState,
  AttachedCollisionObject: AttachedCollisionObject,
  MotionSequenceItem: MotionSequenceItem,
  PositionConstraint: PositionConstraint,
  TrajectoryConstraints: TrajectoryConstraints,
  ConstraintEvalResult: ConstraintEvalResult,
  LinkScale: LinkScale,
  CartesianTrajectoryPoint: CartesianTrajectoryPoint,
  PlanningOptions: PlanningOptions,
  RobotTrajectory: RobotTrajectory,
  PlannerInterfaceDescription: PlannerInterfaceDescription,
  CartesianTrajectory: CartesianTrajectory,
  DisplayRobotState: DisplayRobotState,
  MotionSequenceResponse: MotionSequenceResponse,
  Constraints: Constraints,
  WorkspaceParameters: WorkspaceParameters,
  MoveItErrorCodes: MoveItErrorCodes,
  CollisionObject: CollisionObject,
  BoundingVolume: BoundingVolume,
  DisplayTrajectory: DisplayTrajectory,
};
