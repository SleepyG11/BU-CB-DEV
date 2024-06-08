local lovely = require("lovely")
local nativefs = require("nativefs")

function Card:set_perishable(_perishable) 
    self.ability.perishable = nil
    if (self.config.center.perishable_compat or G.GAME.modifiers.all_perishable) and not self.ability.eternal then 
        self.ability.perishable = true
        self.ability.perish_tally = G.GAME.perishable_rounds
    end
end

ChallengeMod.config = {}
ChallengeMod.config.face_down = false

CustomChallenges = {
    {
    name = 'Riff-Raffle',
    id = 'c_mod_riffraff_1',
    rules = {
        custom = {{
            id = 'no_reward'
        }, {
            id = 'no_extra_hand_money'
        }, {
            id = 'no_interest'
        }, {
            id = 'no_shop_jokers'
        }},
        modifiers = {{
            id = 'dollars',
            value = 0
        }, {
            id = 'discards',
            value = 3
        }, {
            id = 'hands',
            value = 4
        }, {
            id = 'reroll_cost',
            value = 5
        }, {
            id = 'joker_slots',
            value = 5
        }, {
            id = 'consumable_slots',
            value = 3
        }, {
            id = 'hand_size',
            value = 7
        }},
    },
    jokers = {{
        id = 'j_riff_raff',
        edition = 'negative',
        eternal = true,
    }},
    consumeables = {},
    vouchers = {},
    deck = {
        type = 'Challenge Deck'
    },
    restrictions = {
        banned_cards = {{
            id = 'c_judgement'
        }, {
            id = 'c_wraith'
        }, {
            id = 'c_ankh'
        }, {
            id = 'c_soul'
        }, {
            id = 'p_buffoon_normal_1',
            ids = {'p_buffoon_normal_1', 'p_buffoon_normal_2', 'p_buffoon_jumbo_1', 'p_buffoon_mega_1'}
        }, {
            id = 'v_seed_money'
        }, {
            id = 'v_money_tree'
        }, {
            id = 'j_golden'
        }, {
            id = 'j_business'
        }, {
            id = 'j_egg'
        }, {
            id = 'j_riff_raff'
        }, {
            id = 'j_ticket'
        }, {
            id = 'j_faceless'
        }            
        },
        banned_tags = {{
            id = 'tag_rare'
        }, {
            id = 'tag_uncommon'
        }, {
            id = 'tag_holo'
        }, {
            id = 'tag_polychrome'
        }, {
            id = 'tag_negative'
        }, {
            id = 'tag_foil'
        }, {
            id = 'tag_buffoon'
        }},
        banned_other = {}
    }
},  {
    name = "Anapodaphobia",
    id = 'c_mod_fleeting_1',
    rules = {
        custom = {
            {id = 'all_perishable'},
            {id = 'credit', value = 'Djynasty'}
        },
        modifiers = {
        }
    },
    jokers = {
    },
    consumeables = {
    },
    vouchers = {
    },
    deck = {
        type = 'Challenge Deck'
    },
    restrictions = {
        banned_cards = {
        },
        banned_tags = {
        },
        banned_other = {
        }
    }
},
{
    name = "Tarot Tycoon",
    id = 'c_mod_tarot_tycoon_1',
    rules = {
        custom = {
            {id = 'no_shop_jokers'},
            {id = 'no_shop_planets'},
        },
        modifiers = {
        }
    },
    jokers = {
    },
    consumeables = {
    },
    vouchers = {
    },
    deck = {
        type = 'Challenge Deck'
    },
    restrictions = {
        banned_cards = {{
            id = 'p_buffoon_normal_1',
            ids = {'p_buffoon_normal_1', 'p_buffoon_normal_2', 'p_buffoon_jumbo_1', 'p_buffoon_mega_1'}
        }, {
            id = 'p_celestial_normal_1',
            ids = {'p_celestial_normal_1', 'p_celestial_normal_2', 'p_celestial_normal_3', 'p_celestial_normal_4', 'p_celestial_jumbo_1', 'p_celestial_jumbo_2', 'p_celestial_mega_1', 'p_celestial_mega_2'}
        }, {
            id = 'v_planet_merchant',
        }, {
            id = 'v_planet_tycoon',
        },
            id = 'v_tarot_merchant',
        }, {
            id = 'v_tarot_tycoon'
        },
        banned_tags = {{
            id = 'tag_rare'
        }, {
            id = 'tag_uncommon'
        }, {
            id = 'tag_holo'
        }, {
            id = 'tag_polychrome'
        }, {
            id = 'tag_negative'
        }, {
            id = 'tag_foil'
        }, {
            id = 'tag_buffoon'
        }, {
            id = 'tag_meteor'
        }},
        banned_other = {
        }
    }
}, {
    name = "Jimbofull",
    id = 'c_mod_jimbofull_1',
    rules = {
        custom = {
            {id = 'no_shop_planets'},
            {id = 'no_shop_tarots'},
        },
        modifiers = {
            {
                id = 'consumable_slots',
                value = 0
            },
        }
    },
    jokers = {
    },
    consumeables = {
    },
    vouchers = {
    },
    deck = {
        type = 'Challenge Deck'
    },
    restrictions = {
        banned_cards = {{
            id = 'p_standard_normal_1',
            ids = {'p_standard_normal_1', 'p_standard_normal_2', 'p_standard_normal_3', 'p_standard_normal_4', 'p_standard_jumbo_1', 'p_standard_jumbo_2', 'p_standard_mega_1', 'p_standard_mega_2'}
        }, {
            id = 'p_celestial_normal_1',
            ids = {'p_celestial_normal_1', 'p_celestial_normal_2', 'p_celestial_normal_3', 'p_celestial_normal_4', 'p_celestial_jumbo_1', 'p_celestial_jumbo_2', 'p_celestial_mega_1', 'p_celestial_mega_2'}
        }, {
            id = 'p_arcana_normal_1',
            ids = {'p_arcana_normal_1', 'p_arcana_normal_2','p_arcana_normal_3','p_arcana_normal_4','p_arcana_jumbo_1','p_arcana_jumbo_2','p_arcana_mega_1','p_arcana_mega_2'}
        }, {
            id = 'p_spectral_normal_1',
            ids = {'p_spectral_normal_1', 'p_spectral_normal_2', 'p_spectral_jumbo_1', 'p_spectral_mega_1'}
        }, {
            id = 'j_sixth_sense'
        }, {
            id = 'j_superposition'
        }, {
            id = 'j_vagabond'
        }, {
            id = 'j_hallucination'
        }, {
            id = 'j_cartomancer'
        }, {
            id = 'j_astronomer'
        }, {
            id = 'j_burnt'
        }, {
            id = 'j_space'
        }, {
            id = 'j_8_ball'
        }, {
            id = 'v_tarot_merchant'
        }, {
            id = 'v_planet_merchant'
        }, {
            id = 'v_omen_globe'
        }, {
            id = 'v_telescope'
        }, {
            id = 'j_stone'
        }, {
            id = 'j_vampire'
        }, {
            id = 'j_marble'
        }, {
            id = 'j_certificate'
        }, {
            id = 'j_glass'
        }, {
            id = 'j_steel_joker'
        }, {
            id = 'j_drivers_license'
        }
        },
        banned_tags = {{
            id = 'tag_meteor'
        }, {
            id = 'tag_charm'
        }, {
            id = 'tag_etherial'
        }, {
            id = 'tag_orbital'
        },
        },
        banned_other = {
        }
    }
}, {
    name = "Unfortunate",
    id = 'c_mod_unfortunate_1',
    rules = {
        custom = {
            {id = 'no_shop_jokers'},
            {id = 'no_shop_planets'},
            {id = 'credit_DrSpectred'}
        },
        modifiers = {
            {id = 'discards', value = 1},
            {id = 'hands', value = 1},
        }
    },
    jokers = {
    },
    consumeables = {
    },
    vouchers = {
        {id = 'v_crystal_ball'},
        {id = 'v_omen_globe'}
    },
    deck = {
        type = 'Challenge Deck'
    },
    restrictions = {
        banned_cards = {{
            id = 'p_buffoon_normal_1',
            ids = {'p_buffoon_normal_1', 'p_buffoon_normal_2', 'p_buffoon_jumbo_1', 'p_buffoon_mega_1'}
        },
        },
        banned_tags = {{
            id = 'tag_rare'
        }, {
            id = 'tag_uncommon'
        }, {
            id = 'tag_holo'
        }, {
            id = 'tag_polychrome'
        }, {
            id = 'tag_negative'
        }, {
            id = 'tag_foil'
        }, {
            id = 'tag_buffoon'
        },
        },
        banned_other = {
        }
    }
},

}

for i, v in ipairs(CustomChallenges) do
    table.insert(G.CHALLENGES, #G.CHALLENGES + 1, v)
end
