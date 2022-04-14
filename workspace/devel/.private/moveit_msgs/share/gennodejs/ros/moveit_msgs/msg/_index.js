
"use strict";

let MoveGroupAction = require('./MoveGroupAction.js');
let PlaceResult = require('./PlaceResult.js');
let PlaceActionResult = require('./PlaceActionResult.js');
let MoveGroupActionFeedback = require('./MoveGroupActionFeedback.js');
let MoveGroupResult = require('./MoveGroupResult.js');
let PickupResult = require('./PickupResult.js');
let ExecuteTrajectoryAction = require('./ExecuteTrajectoryAction.js');
let PickupActionResult = require('./PickupActionResult.js');
let ExecuteTrajectoryActionResult = require('./ExecuteTrajectoryActionResult.js');
let PickupAction = require('./PickupAction.js');
let MoveGroupSequenceFeedback = require('./MoveGroupSequenceFeedback.js');
let PlaceActionFeedback = require('./PlaceActionFeedback.js');
let MoveGroupGoal = require('./MoveGroupGoal.js');
let PlaceActionGoal = require('./PlaceActionGoal.js');
let MoveGroupActionGoal = require('./MoveGroupActionGoal.js');
let ExecuteTrajectoryResult = require('./ExecuteTrajectoryResult.js');
let ExecuteTrajectoryFeedback = require('./ExecuteTrajectoryFeedback.js');
let MoveGroupSequenceResult = require('./MoveGroupSequenceResult.js');
let PlaceGoal = require('./PlaceGoal.js');
let MoveGroupSequenceAction = require('./MoveGroupSequenceAction.js');
let PlaceAction = require('./PlaceAction.js');
let MoveGroupSequenceActionGoal = require('./MoveGroupSequenceActionGoal.js');
let MoveGroupSequenceGoal = require('./MoveGroupSequenceGoal.js');
let MoveGroupSequenceActionResult = require('./MoveGroupSequenceActionResult.js');
let MoveGroupSequenceActionFeedback = require('./MoveGroupSequenceActionFeedback.js');
let MoveGroupFeedback = require('./MoveGroupFeedback.js');
let PlaceFeedback = require('./PlaceFeedback.js');
let PickupGoal = require('./PickupGoal.js');
let PickupActionGoal = require('./PickupActionGoal.js');
let MoveGroupActionResult = require('./MoveGroupActionResult.js');
let PickupFeedback = require('./PickupFeedback.js');
let ExecuteTrajectoryGoal = require('./ExecuteTrajectoryGoal.js');
let PickupActionFeedback = require('./PickupActionFeedback.js');
let ExecuteTrajectoryActionFeedback = require('./ExecuteTrajectoryActionFeedback.js');
let ExecuteTrajectoryActionGoal = require('./ExecuteTrajectoryActionGoal.js');
let PositionConstraint = require('./PositionConstraint.js');
let Grasp = require('./Grasp.js');
let MotionSequenceResponse = require('./MotionSequenceResponse.js');
let LinkPadding = require('./LinkPadding.js');
let PlanningOptions = require('./PlanningOptions.js');
let MoveItErrorCodes = require('./MoveItErrorCodes.js');
let PlanningSceneComponents = require('./PlanningSceneComponents.js');
let PlanningScene = require('./PlanningScene.js');
let PlannerParams = require('./PlannerParams.js');
let VisibilityConstraint = require('./VisibilityConstraint.js');
let KinematicSolverInfo = require('./KinematicSolverInfo.js');
let JointLimits = require('./JointLimits.js');
let RobotState = require('./RobotState.js');
let CollisionObject = require('./CollisionObject.js');
let MotionPlanRequest = require('./MotionPlanRequest.js');
let DisplayRobotState = require('./DisplayRobotState.js');
let CostSource = require('./CostSource.js');
let CartesianTrajectoryPoint = require('./CartesianTrajectoryPoint.js');
let LinkScale = require('./LinkScale.js');
let MotionSequenceItem = require('./MotionSequenceItem.js');
let PlaceLocation = require('./PlaceLocation.js');
let AllowedCollisionMatrix = require('./AllowedCollisionMatrix.js');
let ObjectColor = require('./ObjectColor.js');
let JointConstraint = require('./JointConstraint.js');
let TrajectoryConstraints = require('./TrajectoryConstraints.js');
let PlanningSceneWorld = require('./PlanningSceneWorld.js');
let MotionSequenceRequest = require('./MotionSequenceRequest.js');
let CartesianTrajectory = require('./CartesianTrajectory.js');
let DisplayTrajectory = require('./DisplayTrajectory.js');
let OrientationConstraint = require('./OrientationConstraint.js');
let Constraints = require('./Constraints.js');
let BoundingVolume = require('./BoundingVolume.js');
let CartesianPoint = require('./CartesianPoint.js');
let ContactInformation = require('./ContactInformation.js');
let PlannerInterfaceDescription = require('./PlannerInterfaceDescription.js');
let MotionPlanDetailedResponse = require('./MotionPlanDetailedResponse.js');
let ConstraintEvalResult = require('./ConstraintEvalResult.js');
let RobotTrajectory = require('./RobotTrajectory.js');
let PositionIKRequest = require('./PositionIKRequest.js');
let WorkspaceParameters = require('./WorkspaceParameters.js');
let OrientedBoundingBox = require('./OrientedBoundingBox.js');
let GenericTrajectory = require('./GenericTrajectory.js');
let GripperTranslation = require('./GripperTranslation.js');
let AttachedCollisionObject = require('./AttachedCollisionObject.js');
let AllowedCollisionEntry = require('./AllowedCollisionEntry.js');
let MotionPlanResponse = require('./MotionPlanResponse.js');

module.exports = {
  MoveGroupAction: MoveGroupAction,
  PlaceResult: PlaceResult,
  PlaceActionResult: PlaceActionResult,
  MoveGroupActionFeedback: MoveGroupActionFeedback,
  MoveGroupResult: MoveGroupResult,
  PickupResult: PickupResult,
  ExecuteTrajectoryAction: ExecuteTrajectoryAction,
  PickupActionResult: PickupActionResult,
  ExecuteTrajectoryActionResult: ExecuteTrajectoryActionResult,
  PickupAction: PickupAction,
  MoveGroupSequenceFeedback: MoveGroupSequenceFeedback,
  PlaceActionFeedback: PlaceActionFeedback,
  MoveGroupGoal: MoveGroupGoal,
  PlaceActionGoal: PlaceActionGoal,
  MoveGroupActionGoal: MoveGroupActionGoal,
  ExecuteTrajectoryResult: ExecuteTrajectoryResult,
  ExecuteTrajectoryFeedback: ExecuteTrajectoryFeedback,
  MoveGroupSequenceResult: MoveGroupSequenceResult,
  PlaceGoal: PlaceGoal,
  MoveGroupSequenceAction: MoveGroupSequenceAction,
  PlaceAction: PlaceAction,
  MoveGroupSequenceActionGoal: MoveGroupSequenceActionGoal,
  MoveGroupSequenceGoal: MoveGroupSequenceGoal,
  MoveGroupSequenceActionResult: MoveGroupSequenceActionResult,
  MoveGroupSequenceActionFeedback: MoveGroupSequenceActionFeedback,
  MoveGroupFeedback: MoveGroupFeedback,
  PlaceFeedback: PlaceFeedback,
  PickupGoal: PickupGoal,
  PickupActionGoal: PickupActionGoal,
  MoveGroupActionResult: MoveGroupActionResult,
  PickupFeedback: PickupFeedback,
  ExecuteTrajectoryGoal: ExecuteTrajectoryGoal,
  PickupActionFeedback: PickupActionFeedback,
  ExecuteTrajectoryActionFeedback: ExecuteTrajectoryActionFeedback,
  ExecuteTrajectoryActionGoal: ExecuteTrajectoryActionGoal,
  PositionConstraint: PositionConstraint,
  Grasp: Grasp,
  MotionSequenceResponse: MotionSequenceResponse,
  LinkPadding: LinkPadding,
  PlanningOptions: PlanningOptions,
  MoveItErrorCodes: MoveItErrorCodes,
  PlanningSceneComponents: PlanningSceneComponents,
  PlanningScene: PlanningScene,
  PlannerParams: PlannerParams,
  VisibilityConstraint: VisibilityConstraint,
  KinematicSolverInfo: KinematicSolverInfo,
  JointLimits: JointLimits,
  RobotState: RobotState,
  CollisionObject: CollisionObject,
  MotionPlanRequest: MotionPlanRequest,
  DisplayRobotState: DisplayRobotState,
  CostSource: CostSource,
  CartesianTrajectoryPoint: CartesianTrajectoryPoint,
  LinkScale: LinkScale,
  MotionSequenceItem: MotionSequenceItem,
  PlaceLocation: PlaceLocation,
  AllowedCollisionMatrix: AllowedCollisionMatrix,
  ObjectColor: ObjectColor,
  JointConstraint: JointConstraint,
  TrajectoryConstraints: TrajectoryConstraints,
  PlanningSceneWorld: PlanningSceneWorld,
  MotionSequenceRequest: MotionSequenceRequest,
  CartesianTrajectory: CartesianTrajectory,
  DisplayTrajectory: DisplayTrajectory,
  OrientationConstraint: OrientationConstraint,
  Constraints: Constraints,
  BoundingVolume: BoundingVolume,
  CartesianPoint: CartesianPoint,
  ContactInformation: ContactInformation,
  PlannerInterfaceDescription: PlannerInterfaceDescription,
  MotionPlanDetailedResponse: MotionPlanDetailedResponse,
  ConstraintEvalResult: ConstraintEvalResult,
  RobotTrajectory: RobotTrajectory,
  PositionIKRequest: PositionIKRequest,
  WorkspaceParameters: WorkspaceParameters,
  OrientedBoundingBox: OrientedBoundingBox,
  GenericTrajectory: GenericTrajectory,
  GripperTranslation: GripperTranslation,
  AttachedCollisionObject: AttachedCollisionObject,
  AllowedCollisionEntry: AllowedCollisionEntry,
  MotionPlanResponse: MotionPlanResponse,
};
