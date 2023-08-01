Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E1E61ADD6
	for <keys@linux.kernel.org>; Tue,  1 Aug 2023 15:47:45 +0000 (UTC)
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-403b3273074so26844271cf.1
        for <keys@linux.kernel.org>; Tue, 01 Aug 2023 08:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1690904864; x=1691509664;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CCiuE5XtwKBBj9emlNT7+wQLbNtragXOUyjAzBYy5+g=;
        b=eKYWW5puwIE3OUwoMTE7RMB/fXWsdxLoPSnt1SfR2gEnMc5uH5+KGRAuO98MI7StTM
         TGmxSqZkFiuewO5Y4ZNAF8n+3Oo0KxwtpTRjiEpA4SvWsPrOnBFnSkXk44rIzLOvaN7u
         x4P2AaclJtJcx/672acAwyq0Cpzu+A/gPkac0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690904864; x=1691509664;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CCiuE5XtwKBBj9emlNT7+wQLbNtragXOUyjAzBYy5+g=;
        b=Dv0YUnwa/mNXHusOXhl4kCADDOJ31lIRjV8Q1X49JMfgJKmSgx1clIhJ3JVk1C7CAB
         vHbUhJY0RWRYCXdUoJj0GjYe56bTlnsuiDTB8G/44XBAWxiK3YaAATFag2aAjIVCmqMg
         wBnJ9B2TOqSE7gtzKEirvNHZl2sNlEtZIqUrtU+uMB+Sa9V2mEvDCveKCQjXSE85R6/U
         3GIWodnYCDrPgz8wzjs+xGvRH1UcskwIZjdNKgWz0Eu55+puuPiwBZRUUTi9U0OgsKFn
         eFnxRTXgoMF1Smv7KQ3riy5XB3ClIdnUUibYCUMz9e6SW7DHO5RmNf2SiqyEZ2tELkB8
         VRtA==
X-Gm-Message-State: ABy/qLZ3o3rhA+04we9g7YcknSBeIlZDXYHWZXesYMi7ReHplu4wldX3
	0UTmJufCzoVDy5wktUckerHg3g==
X-Google-Smtp-Source: APBJJlFWZfp4Err8uIQ6/ZkCAA7/Rc0diqQupek9N06dWJ1JKNG2oFLwbn8L68Av/+LTRcCTTLuzHg==
X-Received: by 2002:a05:622a:cd:b0:3ff:2cce:c625 with SMTP id p13-20020a05622a00cd00b003ff2ccec625mr16258871qtw.19.1690904864298;
        Tue, 01 Aug 2023 08:47:44 -0700 (PDT)
Received: from meerkat.local ([142.113.79.114])
        by smtp.gmail.com with ESMTPSA id k14-20020ac8604e000000b00405d7c1a4b0sm4446849qtm.15.2023.08.01.08.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Aug 2023 08:47:44 -0700 (PDT)
Date: Tue, 1 Aug 2023 11:47:35 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Ahmad Fatoum <afa@pengutronix.de>
Cc: keys@linux.kernel.org
Subject: Re: a.fatoum@pengutronix.de
Message-ID: <20230801-outspoken-uncut-13b63c@meerkat>
References: <E1qQjev-004bn0-32@dude05.red.stw.pengutronix.de>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <E1qQjev-004bn0-32@dude05.red.stw.pengutronix.de>

On Tue, Aug 01, 2023 at 09:19:09AM +0200, Ahmad Fatoum wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

There's only one signature that we recognize on this key, from Uwe
Kleine-König, and it's already too far removed from Linus Torvalds to work for
web of trust purposes. If you get your key signed by someone else with a key
already in the keyring, it should help.

-K
