Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D036A2F56
	for <keys@linux.kernel.org>; Mon, 22 Aug 2022 17:16:37 +0000 (UTC)
Received: by mail-qk1-f169.google.com with SMTP id a15so8368083qko.4
        for <keys@linux.kernel.org>; Mon, 22 Aug 2022 10:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=dE/JPugQRX1kf3LiXuvJuuAxgQc6AclT5Zp/tG7/1G4=;
        b=W5OxWcLXQyY/HxXdYq3KtEL560M63LE8qVgKLNtV4XTyujsNItBGIMDgqG1eNZ78qP
         jvjI8MELWc7zkTjbLwIVrRl8EW891SC3GWKsa7rcKpUQFSCvBkkJMp0N/sqwYSzVIgRA
         2A2JQmzOriERUL6HqoeSmluiZE6smg2ZxPr2w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=dE/JPugQRX1kf3LiXuvJuuAxgQc6AclT5Zp/tG7/1G4=;
        b=WQ0IjlmvQiP5UzldHZE+R/Jn+wdPHCEiPE1w4E3ad7rzryVI0eEdhFtzRNiKNcU8B6
         36VbXfnt3PITZijIGIGUZvopDOuy4QsNfDFLtzTdyx26OYxDLQ7859hQAD8BXQnfl1+G
         j48JZqptgir8X5rCBOcyT0XYbWYD6a6YTHOAgyx4YgP5yxa+JTY54CEwOM2tGlAkZ1k0
         2RVn7YN9g+RxjSn0DtCJM5QAZ/KfrGPY/4Ro06mRu1E+cWa4cR67qsUz9HMD9OTjzzKv
         8BGLF173XmyX89ItO0n3ZRHLJufPAR39n0IhLthE80718Xan/ukwV4+NLqzeBy56XyDl
         mFBw==
X-Gm-Message-State: ACgBeo3CBqSXrKeXZI+JcAaVCXEQ2mn02fiFspUN/MFXfDvlNfhjOIuB
	EJOJ/fx2xyuOJYAhtzrZ1SQdRA==
X-Google-Smtp-Source: AA6agR7m5tHCb54xkUzX+DYwJpnuH9culCBVmD8Md3yzQ7ih/oHEVBEu+pO8W5LsReouV4BfxSHehA==
X-Received: by 2002:a37:2790:0:b0:6bb:cf35:8544 with SMTP id n138-20020a372790000000b006bbcf358544mr11322364qkn.581.1661188596597;
        Mon, 22 Aug 2022 10:16:36 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-33-142-113-79-147.dsl.bell.ca. [142.113.79.147])
        by smtp.gmail.com with ESMTPSA id r11-20020ae9d60b000000b006af1f0af045sm10802374qkk.107.2022.08.22.10.16.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 10:16:36 -0700 (PDT)
Date: Mon, 22 Aug 2022 13:16:34 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Stephen Brennan <stephen.s.brennan@oracle.com>
Cc: keys@linux.kernel.org
Subject: Re: Keys for Stephen Brennan
Message-ID: <20220822171634.ynfqwr2rj3762inx@meerkat.local>
References: <87y1vjlqpb.fsf@oracle.com>
 <20220822150046.xwlk6j42r2gxpw4k@meerkat.local>
 <877d30kyij.fsf@oracle.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <877d30kyij.fsf@oracle.com>

On Mon, Aug 22, 2022 at 09:56:36AM -0700, Stephen Brennan wrote:
> I guess I missed all the changes to keyservers not distributing third
> party signatures anymore! I just assumed that a "--recv-key" would get
> my signatures but I need to manually copy the exported key these days.
> 
> I've attached re-exported key with third-party signatures.

Okay, I've added your key with a single path through Luis Chamberlain.

-K
