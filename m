Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F0FE256C
	for <keys@linux.kernel.org>; Mon, 22 Aug 2022 15:00:49 +0000 (UTC)
Received: by mail-qk1-f171.google.com with SMTP id n21so8030240qkk.3
        for <keys@linux.kernel.org>; Mon, 22 Aug 2022 08:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=ArQMYX7k6kzzNCef0Zhm92pT077CqI4QOca7fTOTE6k=;
        b=UYbRIKfPqLFfPyNb/jHgrJmddD/arA5vWfaxmlB0uHLqgRwqVEdBSePPz4K+Tgvf7u
         YbvXXmUMY6y+jPS/ppdFzTiZIADyoNV2WRdEgl5Iu1AMM5ADwzTfHD7HhIUGLw6s2lWT
         Pp8x0EXZmG9VtyESO2FGVY0+EONmbTbSpH6mA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=ArQMYX7k6kzzNCef0Zhm92pT077CqI4QOca7fTOTE6k=;
        b=s0PCFcoynYiHGL9n3MNcmphtn9EBaRPfMHB6WBJIkyVI+aKwLfAa7v8Hh8Blhk0ne0
         QzdbWuZfHENnThzdwkayQ6+PfpgjwrNgt3QbwCVWOfnaKDru2t+uMeva+A+EyfbQPlYm
         RD5zb6V5+aDrMLUkyS5Cu5rUaH7qGf4NvvLpDf9WvAT1pG/fy5gOuhgYkK14CRqxwb3m
         YNVWh31vkA9OTG2HehZiJamG+T0QjSVjmU12ujPIQIRvwxxMdcI3NfXRpNtrHRiBWTrQ
         lpGOJKFYvKASP/+/UkzORy5zH5pPvtbYd33Tab+ZQh92D+XAdz0PCSwk1/r5yTdHomYD
         grpg==
X-Gm-Message-State: ACgBeo3psgimdERSdsJvQm+H1kxykfjQaZeYMgoj1xPu3/cxjj+CO5UJ
	otWuSA3lqypLDQc+2f1rCcOcbQ==
X-Google-Smtp-Source: AA6agR5pAS7Clgrvve7Mn/kA7fBPwU9rmk4cYmwv6JhR302Cydf9btpDFLgcBKtLai2u0dCu8aXPAg==
X-Received: by 2002:a05:620a:120b:b0:6bb:daa4:8876 with SMTP id u11-20020a05620a120b00b006bbdaa48876mr8924446qkj.716.1661180448320;
        Mon, 22 Aug 2022 08:00:48 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-33-142-113-79-147.dsl.bell.ca. [142.113.79.147])
        by smtp.gmail.com with ESMTPSA id bj21-20020a05620a191500b006bbfc742511sm5400841qkb.12.2022.08.22.08.00.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 08:00:48 -0700 (PDT)
Date: Mon, 22 Aug 2022 11:00:46 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Stephen Brennan <stephen.s.brennan@oracle.com>
Cc: keys@linux.kernel.org
Subject: Re: Keys for Stephen Brennan
Message-ID: <20220822150046.xwlk6j42r2gxpw4k@meerkat.local>
References: <87y1vjlqpb.fsf@oracle.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <87y1vjlqpb.fsf@oracle.com>

On Fri, Aug 19, 2022 at 05:10:56PM -0700, Stephen Brennan wrote:
> Hello,
> 
> Adding my key with identities for stephen@brennan.io and
> stephen.s.brennan@oracle.com, both of which I use. Should be attached
> with relevant signatures.

Hello:

There are no signatures on the attached key other than self-sigs.

	$ gpg --list-packets /tmp/inc.gpg | grep ':signature'
	:signature packet: algo 1, keyid 2EADC69438E476F9
	:signature packet: algo 1, keyid 2EADC69438E476F9
	:signature packet: algo 1, keyid 2EADC69438E476F9
	:signature packet: algo 1, keyid 2EADC69438E476F9
	:signature packet: algo 1, keyid 2EADC69438E476F9

Regards,
Konstantin
