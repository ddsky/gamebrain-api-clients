/*
 * GameBrain API
 *
 * GameBrain API
 *
 * The version of the OpenAPI document: 1.0.1
 * Contact: mail@gamebrain.co
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct GameResponseRating {
    #[serde(rename = "mean", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub mean: Option<Option<f32>>,
    #[serde(rename = "count", skip_serializing_if = "Option::is_none")]
    pub count: Option<i32>,
    #[serde(rename = "mean_players", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub mean_players: Option<Option<f32>>,
    #[serde(rename = "count_players", skip_serializing_if = "Option::is_none")]
    pub count_players: Option<i32>,
    #[serde(rename = "mean_critics", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub mean_critics: Option<Option<f32>>,
    #[serde(rename = "count_critics", skip_serializing_if = "Option::is_none")]
    pub count_critics: Option<i32>,
}

impl GameResponseRating {
    pub fn new() -> GameResponseRating {
        GameResponseRating {
            mean: None,
            count: None,
            mean_players: None,
            count_players: None,
            mean_critics: None,
            count_critics: None,
        }
    }
}

