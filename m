Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74A73D8F
	for <keys@linux.kernel.org>; Tue, 19 Jul 2022 18:53:08 +0000 (UTC)
Received: by mail-qv1-f43.google.com with SMTP id u3so2526299qvm.9
        for <keys@linux.kernel.org>; Tue, 19 Jul 2022 11:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=OkUASSF+WYyVd4zQ/fuUZ52cUBTbl2YXITuEubQd/aE=;
        b=MfigxtOeP6lam5paNqR2RWyLOHyl1szMzEgXD/017lqPonuoagA7yQFV+RFmADeuoM
         8DM9XtTDdfsNY7kCfBUYa6LCMQXcl+4IuX5+Oc14sPqLnm0/I6yIxbFrxuFNjtq5/gkl
         Mo+YlM55k7dcAV149ZLaiMbx23VKEe5q1nIzY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=OkUASSF+WYyVd4zQ/fuUZ52cUBTbl2YXITuEubQd/aE=;
        b=hp+0e/O00SU0kKCR1nG2Fht9Wv9johIMLbeuoaFbZ0jUMTi+AOUireL2LLTca0mGlO
         JWPwAZZrKIAobVeqIpDacX8fj6oip+xTfGYNHELxFTRD/44bc9SfliiIK2GuhdXGEnWc
         gyxNq+f1YHBSS1qLRXHcwOo2Ro4HT93WEszUbfysyWd/ukEJSd+jcHslLN1dPgWo3eAv
         bnBWmPehsSqfmQKAvaj00PaSrIv3Jd9Ldo2ZMGLbTfUn07iPxSmLqeuTaKDLsC6vNhPv
         fXFaAV0ZMY6ckwV6P0k/nPsnBVjOPvNX+RxhQCKxHUBo7Ym9rlaGEL7mE/Rf5/7WQnOE
         fYgg==
X-Gm-Message-State: AJIora9++Ld8CpT5Sq2Ztn3CFk5f06whTVPXGb2BD9uP2B7bEd6JM+j7
	Ok0aWgBLEt+NVHkaQBHsdo3dZg==
X-Google-Smtp-Source: AGRyM1sQCO7SgwYcALbqHeFUBadBHrFhjFdV+z93tn2B6iPNyVvfBqJiXMP9KKD8tcbpAz83LmiuYg==
X-Received: by 2002:ad4:5b81:0:b0:473:4a0f:6f17 with SMTP id 1-20020ad45b81000000b004734a0f6f17mr26023907qvp.64.1658256786852;
        Tue, 19 Jul 2022 11:53:06 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-245.dsl.bell.ca. [209.226.106.245])
        by smtp.gmail.com with ESMTPSA id bs19-20020a05620a471300b006b604a2f856sm1125452qkb.51.2022.07.19.11.53.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jul 2022 11:53:06 -0700 (PDT)
Date: Tue, 19 Jul 2022 14:53:04 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Carlos Maiolino <cem@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: gpg key submission
Message-ID: <20220719185304.livqgoxg2psbjj2k@meerkat.local>
References: <20220719130515.m4yctoedpkfodasx@orion>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220719130515.m4yctoedpkfodasx@orion>

On Tue, Jul 19, 2022 at 03:05:15PM +0200, Carlos Maiolino wrote:
> Hello.
> 
> I'm sending my pgp key to be added to the kernel.org keyring.
> Thanks

Updated.

-Konstantin
