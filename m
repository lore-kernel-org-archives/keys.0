Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92111C34
	for <keys@linux.kernel.org>; Mon, 15 Aug 2022 15:05:49 +0000 (UTC)
Received: by mail-qv1-f51.google.com with SMTP id l8so5522081qvr.5
        for <keys@linux.kernel.org>; Mon, 15 Aug 2022 08:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=z3DzKYfp3Y/oIqQgoSwrLd0nqqIQVC95Y7Nlc6RQGHI=;
        b=d1EddmTtBvTJc8eHnnWFPAnrEu2j4fvTl7wjZmhIGQ6BOccgZ2WvcS9BLpbvi6KEDg
         wnfCojTYQyEywlLb6KvnB1/jvAwmwAxgzHTm2A6RTtgGlo8wTThnYCgRkhU8r/CJPD1A
         F3LOrr/PzvSIuBgynzZGvivKIaKEPa6c7qU8Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=z3DzKYfp3Y/oIqQgoSwrLd0nqqIQVC95Y7Nlc6RQGHI=;
        b=tHrRdx6Ky1/t5zl3YtFGzhVcVvStBQh6rgTMf+ldSHJzuTKcoakr7Wq7jzPatRXkvL
         c2LVoFQmPEKvotjFgMQ9O4RdT74oC+jSL8sk+JQb85xN5W0PmmA2zNOeSJGsM1mt0sNO
         6anovZc9KGQLsA+sFtKCdZ2H4OS4xIuX+rB2XA/5KuD9g11AXMDtHuwsuXl1g4EKKGst
         BUx7G2xB7j4KQthUXBUmgqNvDtkY9FTHoanVkcF/3AVcRHK7e4YsWYigHBzVNqiyo4X/
         51GYLkQ5mBsw+LFDqBwrTSnIRo8H0idTGqUKcQSwPP7rU7bEMJjc386A7RyFCJ4mXrA1
         /2Hg==
X-Gm-Message-State: ACgBeo1Oru75/N3jmKjdScCZSNDduur18HffJL5c3De/8uRKNSwKQ7pv
	6l+yF5WMRYEHngU+dYDaLlAxhA+NkEx7lg==
X-Google-Smtp-Source: AA6agR51GIh/8z2UvFXm5meIUdzmcg6f4twKBviFnsvuiJsrTbfmw5fxcAa9gj1FIANVthphhi0Tiw==
X-Received: by 2002:a05:6214:daf:b0:476:49c7:af8 with SMTP id h15-20020a0562140daf00b0047649c70af8mr13759675qvh.40.1660575948816;
        Mon, 15 Aug 2022 08:05:48 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-245.dsl.bell.ca. [209.226.106.245])
        by smtp.gmail.com with ESMTPSA id e6-20020ac84e46000000b0031ee9afafccsm8682505qtw.14.2022.08.15.08.05.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Aug 2022 08:05:48 -0700 (PDT)
Date: Mon, 15 Aug 2022 11:05:46 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Mika Westerberg <mika.westerberg@linux.intel.com>
Cc: keys@linux.kernel.org
Subject: Re: Updated key
Message-ID: <20220815150546.r6edj66lnxivdbs6@meerkat.local>
References: <YvompE7vyaD6Z32w@black.fi.intel.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YvompE7vyaD6Z32w@black.fi.intel.com>

On Mon, Aug 15, 2022 at 01:57:40PM +0300, Mika Westerberg wrote:
> Attached, thanks!

Updated, thanks.

-K
