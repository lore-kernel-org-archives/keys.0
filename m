Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2CD8F78
	for <keys@linux.kernel.org>; Tue, 21 Feb 2023 22:21:17 +0000 (UTC)
Received: by mail-qt1-f171.google.com with SMTP id k20so2687281qtj.5
        for <keys@linux.kernel.org>; Tue, 21 Feb 2023 14:21:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=obAYFCFCUTtwozCz9oNaQU/6AHzunTeZHFQO6uhjgbk=;
        b=SqWwTQBC4bLXe+fj3qw8WDCNom8I/JXmGHBh1Vrm+oA6O6uhg/tFJiP9voZZouhrDN
         aMVSMmAuJXxEUjDCb5RWAFZs/lnQsuezCncyBmKs35txZL/+hxgbgWLGttIddBkZ7U6y
         iVVhK50bLXTD1+16bH29Fi0TVgbTFH9AC/FDc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=obAYFCFCUTtwozCz9oNaQU/6AHzunTeZHFQO6uhjgbk=;
        b=UBfjrFeIaD5GrWYfW4RBLANnYgMTVwa8t3K+KHcs54X4NKl0MXwDgIwpp5u+z/Ipm8
         Q0exbJpWvLBthKvYXRYabyIXEx1ltFusUAtta6BKSCbVYvl7/+ulaTfeHFlO0YSpOq4N
         U/vS4rUkb27TNwR513UeY4jVEX7wI522kO2FNRzEgppTlsW9fSHvJ+cQrgRzOkrsGk8T
         Zc9TRKJQqWzSVE/wLTuFGE+GDjNk8kkv2Qq6j/iIcg32iondaTMoUMVYMaGu+4cwfMNB
         7naPLJodBNhGKYdjHSHWG5BFWCD3ls78YcXonlQ18d/v25UKqTTWqqaC5sfkSSWy48RN
         CpRw==
X-Gm-Message-State: AO0yUKVNlrXm76XIWujv1zTx+F0XpjU7TM4M3o+bf8GLyPylNw7jTH3W
	lrtn2NYeUCNlWyxrERCugKeNyswyJpuwi54V
X-Google-Smtp-Source: AK7set9bQ9JcV2IzXvzhl5+5D12S2hsV1+AfkDHALDZm3VROcrnDSuhuV++TwQ5mtKi2U8OHnITYpQ==
X-Received: by 2002:ac8:5b8b:0:b0:3b8:6ae7:1757 with SMTP id a11-20020ac85b8b000000b003b86ae71757mr23951440qta.38.1677018076610;
        Tue, 21 Feb 2023 14:21:16 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-7.dsl.bell.ca. [209.226.106.7])
        by smtp.gmail.com with ESMTPSA id y18-20020ac83e92000000b0039cc0fbdb61sm897584qtf.53.2023.02.21.14.21.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 14:21:16 -0800 (PST)
Date: Tue, 21 Feb 2023 17:21:14 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Cc: "keys@linux.kernel.org" <keys@linux.kernel.org>
Subject: Re: Updated key expiration for Mathieu Desnoyers
Message-ID: <20230221222114.zvzpellbxip2qged@meerkat.local>
References: <f722e95b-34e0-7653-9ba3-2849eedf8a90@efficios.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <f722e95b-34e0-7653-9ba3-2849eedf8a90@efficios.com>

On Tue, Feb 14, 2023 at 10:40:07AM -0500, Mathieu Desnoyers wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks!

-K
