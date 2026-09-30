// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

interface IRedemptionPipe {
    function redeem(uint256 shares, address receiver, address controller) external returns (uint256 assets);
    function redeemWithCustomData(uint256 shares, address receiver, address controller, bytes32 customData)
        external
        returns (uint256 assets);
    function withdraw(uint256 assets, address receiver, address controller) external returns (uint256 shares);
    function withdrawWithCustomData(uint256 assets, address receiver, address controller, bytes32 customData) external returns (uint256 shares);
    function requestRedeem(uint256 shares, address receiver, address controller, address owner) external returns (uint256);
    function requestRedeemFast(uint256 shares, address receiver, address controller, address owner) external returns (uint256);
}
