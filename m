Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64EC129CA
	for <keys@linux.kernel.org>; Tue, 11 Jan 2022 22:48:27 +0000 (UTC)
Received: by mail-qk1-f171.google.com with SMTP id bl18so528769qkb.5
        for <keys@linux.kernel.org>; Tue, 11 Jan 2022 14:48:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=2kakQuBqp4p6ixM999VRBmhnZOmaQL72l7XLc24h8Fk=;
        b=QKgaytZoa/kjgyJ4fiAC2iP/TceDY2KywYPez8h/OMdrsru5a+f6KJ5GmgebWoc72O
         KtjTgD4jt9lv2Ev2CZvSy1Zgbs/GBopvxQn+FHmRO1M1Ly7aVnracNdVvOwcZHsDFCWz
         qIOWA8+VvGmqKSV+Ldx02MoyTlS+p3JiI7UOA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=2kakQuBqp4p6ixM999VRBmhnZOmaQL72l7XLc24h8Fk=;
        b=Qo5wV1DJm0WxM8A0wtl4DRi1e04bFHIDNoKNKpEyqjZe3qBWnrpd5r6QgXaiObzvDr
         MyUqvqcemAkC6VFoLQlwe+gqV59ZPFLRZhz3DlBYoewLnmrdJw+MqAbpRONpgbX/TRuv
         urqAJ+bJ3BzCSDZygicc9ReWDj4SYi1l3wqpwKU+LOtWc/LbqhwfitYhi7NeWNkugT58
         T96BkwjvSqKjDQSowNDY7HtP+RtkvJHOjrU7CY0EhlrHmDMQAsfUg+ynLfKl+ogpgOW7
         Ud+tB9c3m68wLZRXqWdr/SE//Qe8y4TeBpbZ7BGvqZDFdY1TbPLPpCgREyTMpL63uVCK
         hSwg==
X-Gm-Message-State: AOAM532fCTx/DxDHfXi1mnBzYSt9nD+ms4PkDOcMSmN+uHhCckJhtnPe
	UgrJTQ4SoRfzQfAug8UdR0CfbqpB3cFolQ==
X-Google-Smtp-Source: ABdhPJzKtVrJzBZou3Du2kHvEiJ7aP2L9r8wlo0W00Cf1h+B4IQ/JUj+e0w5og3UjEAmzsr/kgQBNQ==
X-Received: by 2002:a37:6185:: with SMTP id v127mr1172707qkb.127.1641941306290;
        Tue, 11 Jan 2022 14:48:26 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-181.dsl.bell.ca. [216.209.220.181])
        by smtp.gmail.com with ESMTPSA id de39sm7129482qkb.5.2022.01.11.14.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 14:48:25 -0800 (PST)
Date: Tue, 11 Jan 2022 17:48:24 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Mimi Zohar <zohar@linux.ibm.com>
Cc: keys@linux.kernel.org
Subject: Re: key update
Message-ID: <20220111224824.p2rmscbiusyhy7ta@meerkat.local>
References: <7605fc20694bc286070dd2582f3e54064b2ba085.camel@linux.ibm.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <7605fc20694bc286070dd2582f3e54064b2ba085.camel@linux.ibm.com>

On Tue, Jan 11, 2022 at 05:31:38PM -0500, Mimi Zohar wrote:

Updated, thanks.
